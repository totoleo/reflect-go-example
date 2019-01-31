package rge

import (
	"fmt"
	"reflect"
	"testing"
	"unsafe"
)

func TestFun1(t *testing.T) {
	a := 2
	c := (*string)(unsafe.Pointer(&a))
	*c = "4444444444444444444"
	fmt.Println(*c) //
}

func TestFun2(t *testing.T) {
	a := "654"
	c := (*string)(unsafe.Pointer(&a))
	*c = "44"
	fmt.Println(*c) // 44
}

func TestFun3(t *testing.T) {
	a := 3
	c := *(*string)(unsafe.Pointer(&a))
	value := reflect.ValueOf(c)
	fmt.Println(value.IsValid())
	c = "445"
	fmt.Println(c) // 445
}
