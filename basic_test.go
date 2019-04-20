package rge

import (
	"fmt"
	"io"
	"os"
	"reflect"
	"testing"
)

type MyInt int

func TestTypeOf(t *testing.T) {
	var (
		intVar   int
		int64Var int64
		floatVar float64
		str      string
		file     io.Reader
	)
	fmt.Println(reflect.TypeOf(intVar))
	fmt.Println(reflect.TypeOf(intVar).Kind())

	fmt.Println(reflect.TypeOf(int64Var))
	fmt.Println(reflect.TypeOf(floatVar))
	fmt.Println(reflect.TypeOf(str))
	fmt.Println(reflect.TypeOf(file))
}

func TestTypeUnderlying(t *testing.T) {
	var myIntVar MyInt = 33
	var intVar int = 33
	intVarType := reflect.TypeOf(intVar)
	myIntVarType := reflect.TypeOf(myIntVar)
	if intVarType.Kind() != myIntVarType.Kind() {
		t.Error("expect same underlying type")
	}
}

func TestValueOf(t *testing.T) {
	license, _ := os.Open("./LICENSE")
	var (
		intVar   int       = 1
		int64Var int64     = 2
		floatVar float64   = 3
		str      string    = "hello"
		file     io.Reader = license
	)
	fmt.Println(reflect.ValueOf(intVar))
	fmt.Println(reflect.ValueOf(intVar).Kind())
	fmt.Println(reflect.ValueOf(intVar).Type())
	fmt.Println(reflect.ValueOf(int64Var))
	fmt.Println(reflect.ValueOf(floatVar))
	fmt.Println(reflect.ValueOf(str))
	fmt.Println(reflect.ValueOf(file).Type())
	fmt.Println(reflect.ValueOf(file).Elem().Type())
}

func TestTypeInspect(t *testing.T) {

	var myIntVar MyInt = 33
	type hello struct {
		a string
	}
	var helloVar = hello{
		a: "world",
	}
	inspect(myIntVar)
	fmt.Println()
	inspect(helloVar)

}

func inspect(myIntVar interface{}) {
	varType := reflect.TypeOf(myIntVar)
	varValue := reflect.ValueOf(myIntVar)
	fmt.Println("type kind:", varType.Kind())
	fmt.Println("type:", varType)
	fmt.Println("value:", varValue)
	fmt.Println("value type:", varValue.Type())
	fmt.Println("value kind:", varValue.Kind())
}

func TestSetable(t *testing.T) {

	t.Run("cannot set", func(t *testing.T) {
		defer func() {
			if err := recover(); err == nil {
				t.Error("expect panic")
			}
		}()
		var (
			intVar int = 1
		)
		varValue := reflect.ValueOf(intVar)
		varValue.Set(reflect.ValueOf(3))
	})
	t.Run("cannot set", func(t *testing.T) {
		defer func() {
			if err := recover(); err == nil {
				t.Error("expect panic")
			}
		}()
		s := "hello world"
		val := reflect.ValueOf(_defType{Str: s, StrRef: &s})
		strVal := reflect.ValueOf("hello leo")

		val.Field(0).Set(strVal)
	})

	t.Run("ok", func(t *testing.T) {
		var (
			intVar int = 1
		)
		varValue := reflect.ValueOf(&intVar)
		varValue.Elem().Set(reflect.ValueOf(3))
		if intVar != 3 {
			t.Error("expect 3")
		}
		t.Log(intVar)

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
	})
}
