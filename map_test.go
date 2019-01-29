package rge

import (
	"fmt"
	"reflect"
	"testing"
)

func TestMapAssign(t *testing.T) {
	var (
		srv = map[string]interface{}{
			"a": "hello",
			"b": "world",
			"c": 2,
		}
		dst = make(map[string]interface{})
	)
	srvValue := reflect.ValueOf(srv)
	dstValue := reflect.ValueOf(dst)
	dstType := dstValue.Type()
	keys := srvValue.MapKeys()
	dstElemType := dstType.Elem()
	for _, key := range keys {
		value := srvValue.MapIndex(key)
		var valueType reflect.Type
		if value.Type().Kind() == reflect.Interface {
			valueType = value.Elem().Type()
			value = value.Elem()
		} else {
			valueType = value.Type()
		}
		if valueType.Kind() != dstElemType.Kind() && dstElemType.Kind() != reflect.Interface {
			t.Error(fmt.Errorf("expect type:%v but get type:%v", dstElemType.Kind(), value.Type().Kind()))
			return
		}

		dstValue.SetMapIndex(key, value.Convert(dstElemType))
	}
	t.Log(dst)
}
