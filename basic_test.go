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

func TestTypeOfDefined(t *testing.T) {

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

	t.Run("canot set", func(t *testing.T) {
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
	})
}
