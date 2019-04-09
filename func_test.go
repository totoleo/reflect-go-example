package rge

import (
	"fmt"
	"reflect"
	"testing"
)

func TestFunc(t *testing.T) {
	of := reflect.FuncOf([]reflect.Type{reflect.TypeOf("")}, nil, false)

	welcome := reflect.MakeFunc(of, func(args []reflect.Value) (results []reflect.Value) {
		fmt.Printf("hello %v!\n", args[0])
		return nil
	})

	fmt.Println(of)
	welcome.Call([]reflect.Value{reflect.ValueOf("world")})

}
