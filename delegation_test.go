package rge

import (
	"fmt"
	"reflect"
	"testing"
)

type Foo struct {
	Name string
}

func (f Foo) SayName() string {
	return f.Name
}

type Bar struct {
	Foo
	Age uint8
}

func (b Bar) SayAge() uint8 {
	return b.Age
}

func TestSay(t *testing.T) {
	b := Bar{Foo: Foo{Name: "leo"}, Age: 7}

	fmt.Println(b.SayName(), "->", b.SayAge())
}

func TestSayReflect(t *testing.T) {
	fooType := reflect.TypeOf(Foo{})
	barType := reflect.StructOf([]reflect.StructField{
		{Anonymous: true, Type: fooType, Name: fooType.Name()},
		{Name: "Age", Type: reflect.TypeOf(uint8(0))},
	})
	bar := reflect.New(barType)

	bar.Elem().Field(0).Field(0).Set(reflect.ValueOf("coco"))
	t.Log(bar)
	sayName := bar.Elem().Field(0).MethodByName("SayName")
	if sayName.IsValid() == false {
		t.Error("method not found")
		return
	}
	fmt.Println(sayName.Call(nil))
}

func TestDelegate(t *testing.T) {
	bar := Bar{}
	fooType := reflect.TypeOf(bar)
	fooVal := reflect.ValueOf(bar)
	method, ok := fooType.MethodByName("SayAge")
	if !ok {
		t.Error("not found")
	}
	methodVal := fooVal.MethodByName("SayAge")
	makeFunc := reflect.MakeFunc(method.Type, func(args []reflect.Value) (results []reflect.Value) {
		fmt.Println(args)
		return methodVal.Call(nil)
	})

	//fmt.Println(makeFunc.Call(nil))
	fmt.Println(makeFunc.Call([]reflect.Value{fooVal}))

}
