package rge

import (
	"reflect"
	"testing"
)

func TestMapAssign(t *testing.T) {
	var (
		srv = map[string]interface{}{
			"a": "steve",
			"b": "jobs",
			"c": 0xf8ff,
		}
		dst = make(map[string]string)
	)
	srvValue := reflect.ValueOf(srv)
	dstValue := reflect.ValueOf(dst)
	dstType := dstValue.Type()
	dstElemType := dstType.Elem()
	srcElemType := srvValue.Type().Elem()
	shouldConvert := srcElemType != dstElemType
	if shouldConvert {
		t.Log("check convertible from type", srcElemType, "to type", dstElemType)
	}
	keys := srvValue.MapKeys()
	for _, key := range keys {
		value := srvValue.MapIndex(key)

		if shouldConvert {
			if value.Kind() == reflect.Interface {
				value = value.Elem()
			}
			valType := value.Type()
			if !valType.ConvertibleTo(dstElemType) {
				t.Errorf("val:%v type %v not convertible to type %v", value.Interface(), valType, dstElemType)
				continue
			}

			value = value.Convert(dstElemType)
		}

		dstValue.SetMapIndex(key, value)
	}
	t.Log(dst)
}
