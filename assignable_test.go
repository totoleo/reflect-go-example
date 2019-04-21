package rge

import (
	"fmt"
	"reflect"
	"strings"
	"testing"
)

func TestAssignableDirect(t *testing.T) {
	t.Run("shouldFail", func(t *testing.T) {
		defer func() {
			if err := recover(); err == nil {
				t.Error("expect panic")
			}
		}()
		var (
			intVar int = 1
		)
		varValue := reflect.ValueOf(intVar)
		//To modify a reflection object, the value must be settable.
		//1. value must be addressable
		varValue.Set(reflect.ValueOf(3))
	})
	t.Run("shouldSuccess", func(t *testing.T) {
		var (
			intVar int = 1
		)
		varValue := reflect.ValueOf(&intVar)
		varValue.Elem().SetInt(4)
		t.Log(intVar)
	})
}

func TestAssignableStruct(t *testing.T) {
	str := "hello"
	var val = _defType{Str: str, StrRef: &str}
	t.Log(checkAssignable(reflect.ValueOf(val)))
	t.Log(checkAssignable(reflect.ValueOf(&val)))
}

func checkAssignable(rval reflect.Value) string {
	var sb = strings.Builder{}
	sb.WriteByte('\n')
	sb.WriteString(fmt.Sprintf("val:%s is %t\n", rval.Type(), rval.CanSet()))
	switch rval.Kind() {
	case reflect.Interface, reflect.Ptr:
		sb.WriteString("\t")
		sb.WriteString(fmt.Sprintf("*val:is %t\n", rval.Elem().CanSet()))
		sb.WriteString("\t")
		sb.WriteString("\t")
		sb.WriteString(checkAssignable(rval.Elem()))
	case reflect.Struct:
		for index := 0; index < rval.NumField(); index++ {
			field := rval.Field(index)
			sb.WriteString(fmt.Sprintf("\tfiled %d:%s is %t\n", index, field.String(), field.CanSet()))
		}
	}
	return sb.String()
}
