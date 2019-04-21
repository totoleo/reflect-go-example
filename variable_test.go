package rge

import (
	"context"
	"fmt"
	"reflect"
	"strconv"
	"strings"
	"testing"
	"time"
)

func TestMakePrimitives(t *testing.T) {
	intType := reflect.TypeOf(int(0))
	intVal := reflect.New(intType)

	intVal.Elem().Set(reflect.ValueOf(1))
	if intVal.Elem().Interface().(int) != 1 {
		t.Error("expect 1")
		return
	}
}

func TestMakeSlice(t *testing.T) {
	stringType := reflect.TypeOf("")
	stringSlice := reflect.SliceOf(stringType)
	slice := reflect.MakeSlice(stringSlice, 0, 10)
	slice = reflect.Append(slice, reflect.ValueOf("hello"))
	slice = reflect.Append(slice, reflect.ValueOf("world"))
	slice = reflect.Append(slice, reflect.ValueOf("!"))
	t.Log(slice)
}

const sliceCap = 128

func BenchmarkMakeReflect(b *testing.B) {
	var values []reflect.Value
	for i := 0; i < sliceCap; i++ {
		values = append(values, reflect.ValueOf(strconv.FormatInt(int64(i), 10)))
	}
	b.ReportAllocs()
	for i := 0; i < b.N; i++ {
		stringType := reflect.TypeOf("")
		stringSlice := reflect.SliceOf(stringType)
		slice := reflect.MakeSlice(stringSlice, 0, 64)
		for _, value := range values {
			slice = reflect.Append(slice, value)
		}
	}
}
func BenchmarkMakeNative(b *testing.B) {
	var values []string
	for i := 0; i < sliceCap; i++ {
		values = append(values, strconv.FormatInt(int64(i), 10))
	}

	b.Run("stack", func(b *testing.B) {
		b.ReportAllocs()
		for i := 0; i < b.N; i++ {
			var slice = make([]string, 0, sliceCap)
			for _, value := range values {
				slice = append(slice, value)
			}
		}
	})
	b.Run("heap", func(b *testing.B) {
		b.ReportAllocs()
		length := sliceCap
		for i := 0; i < b.N; i++ {
			var slice = make([]string, 0, length)
			for _, value := range values {
				slice = append(slice, value)
			}
		}
	})
}

type _tKey struct {
	Id uint64
}
type _tValue struct {
	Name  string
	Value []string
}

func TestMakeMap(t *testing.T) {
	v := _tValue{}
	key := _tKey{}
	valType := reflect.TypeOf(v)
	keyType := reflect.TypeOf(key)
	//声明 map[_tKey]_tValue
	mapType := reflect.MapOf(keyType, valType)

	//make(map[_tKey]_tValue)
	mapVal := reflect.MakeMap(mapType)
	//make(map[_tKey]_tValue,4)
	mapValSize := reflect.MakeMapWithSize(mapType, 4)

	key1 := _tKey{1}
	val1 := _tValue{"tom", []string{"go", "php"}}
	key2 := _tKey{2}
	val2 := _tValue{"sun", []string{"python", "c"}}
	//mapVal[key1]=val1
	mapVal.SetMapIndex(reflect.ValueOf(key1), reflect.ValueOf(val1))
	mapVal.SetMapIndex(reflect.ValueOf(key2), reflect.ValueOf(val2))
	t.Log(mapVal)
	mapValSize.SetMapIndex(reflect.ValueOf(key1), reflect.ValueOf(val1))
	mapValSize.SetMapIndex(reflect.ValueOf(key2), reflect.ValueOf(val2))
	t.Log(mapValSize)
}

func TestMakeChannel(t *testing.T) {
	//chan int64
	chanType := reflect.ChanOf(reflect.BothDir, reflect.TypeOf(int64(0)))
	chanVal := reflect.MakeChan(chanType, 0)
	go func() {
		val, ok := chanVal.Recv()
		if !ok {
			t.Error("chan closed")
			return
		}
		t.Log(val.Interface())
	}()
	chanVal.Send(reflect.ValueOf(int64(1)))

	t.Error("expect block by send")
}

func TestMakeFunc(t *testing.T) {
	var args = []interface{}{
		int64(0),
		"",
		([]string)(nil),
	}
	var inArgs []reflect.Type
	for _, arg := range args {
		inArgs = append(inArgs, reflect.TypeOf(arg))
	}
	//func(int64,string,...string)
	funcType := reflect.FuncOf(inArgs, nil, true)

	funcVal := reflect.MakeFunc(funcType, func(args []reflect.Value) (results []reflect.Value) {
		for key, value := range args {
			t.Log(key, value)
		}
		return nil
	})

	retVal := funcVal.Call([]reflect.Value{reflect.ValueOf(int64(1)), reflect.ValueOf("golang"), reflect.ValueOf("hello"), reflect.ValueOf("world")})

	t.Log(retVal)
}

func TestMakeFuncProxy(t *testing.T) {

	proxyFunc := proxy(proxyMe).(func(ctx context.Context, name string, msgs ...string) string)
	result := proxyFunc(context.Background(), "leo", "test", "test01")
	t.Log(result)
}
func proxy(call interface{}) interface{} {
	funcType := reflect.TypeOf(call)
	funcVal := reflect.ValueOf(call)
	proxyMethod := reflect.MakeFunc(funcType, func(args []reflect.Value) (results []reflect.Value) {
		fmt.Println("call at:", time.Now())
		fmt.Println("args", args)
		if funcType.IsVariadic() {
			results = funcVal.CallSlice(args)
		} else {
			results = funcVal.Call(args)
		}
		fmt.Println("end call")
		return results
	})
	return proxyMethod.Interface()
}
func proxyMe(ctx context.Context, name string, msgs ...string) string {
	ret := fmt.Sprintf("hello %s", name)
	sb := strings.Builder{}
	sb.WriteString(ret)
	sb.WriteByte('\n')
	sb.WriteString("messages:")
	for _, msg := range msgs {
		sb.WriteString(msg)
		sb.WriteByte('\n')
	}
	return sb.String()
}

type _defType struct {
	Str    string
	StrRef *string
	str    string
}

func TestMakeStruct(t *testing.T) {
	s := "hello world"
	val := reflect.ValueOf(_defType{Str: s, StrRef: &s})
	t.Log(val.Field(1).Elem())
	strVal := reflect.ValueOf("hello leo")

	val.Field(1).Elem().Set(strVal)

	t.Log(val.Field(1).Elem())

	valRef := reflect.New(val.Type())

	field := valRef.Elem().Field(0)
	field.Set(strVal)
	//valRef.Elem().Field(1).Set(val.Field(1))
	t.Log(valRef)
}
