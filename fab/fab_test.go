package fab

import (
	"errors"
	"fmt"
	"reflect"
	"testing"
	"time"
)

func TestFab(t *testing.T) {
	fmt.Println(fab(3))

	mFab, err := Cacher(fab, 100*time.Second)

	if err != nil {
		t.Error(err)
		return
	}
	fabVal := mFab.(func(uint) uint)(10)
	fmt.Println(fabVal)
}

func fab(n uint) uint {
	if n < 2 {
		return 1
	}
	return fab(n-1) + fab(n-2)
}

type outExp struct {
	out    []reflect.Value
	expiry time.Time
}

func Cacher(f interface{}, expiration time.Duration) (interface{}, error) {
	ft := reflect.TypeOf(f)
	if ft.Kind() != reflect.Func {
		return nil, errors.New("Only for functions")
	}

	inType, err := buildInStruct(ft)
	if err != nil {
		return nil, err
	}

	if ft.NumOut() == 0 {
		return nil, errors.New("Must have at least one returned value")
	}

	m := map[interface{}]outExp{}
	fv := reflect.ValueOf(f)
	cacher := reflect.MakeFunc(ft, func(args []reflect.Value) []reflect.Value {
		iv := reflect.New(inType).Elem()
		for k, v := range args {
			iv.Field(k).Set(v)
		}
		ivv := iv.Interface()
		ov, ok := m[ivv]
		now := time.Now()
		if !ok || ov.expiry.Before(now) {
			ov.out = fv.Call(args)
			ov.expiry = now.Add(expiration)
			m[ivv] = ov
		}
		return ov.out
	})
	return cacher.Interface(), nil
}
func buildInStruct(ft reflect.Type) (reflect.Type, error) {
	if ft.NumIn() == 0 {
		return nil, errors.New("Must have at least one param")
	}
	var sf []reflect.StructField
	for i := 0; i < ft.NumIn(); i++ {
		ct := ft.In(i)
		if !ct.Comparable() {
			return nil, fmt.Errorf("parameter %d of type %s and kind %v is not comparable", i+1, ct.Name(), ct.Kind())
		}
		sf = append(sf, reflect.StructField{
			Name: fmt.Sprintf("F%d", i),
			Type: ct,
		})
	}
	s := reflect.StructOf(sf)
	return s, nil
}
