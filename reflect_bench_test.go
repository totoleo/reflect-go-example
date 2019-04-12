package rge

import (
	"reflect"
	"testing"
)

type Kltao struct {
	//	Name string
	Age int
	//	B    int
	//	C    int
	//	D    int
}

func (k Kltao) Foo() {
	for i := 0; i < 10000; i++ {
		k.Age++
	}
}
func (k Kltao) Foo1() {
	for i := 0; i < 10000; i++ {
		k.Age++
	}
}

func (k Kltao) Foo2() {
	for i := 0; i < 1000000; i++ {
		k.Age++
	}
}
func (k Kltao) Foo3() {
	for i := 0; i < 10000; i++ {
		k.Age++
	}
}
func SimpleFoo(kltao Kltao) {
	kltao.Foo1()
}
func ReflectFoo(k interface{}) {
	v := reflect.ValueOf(k)
	foo := v.MethodByName("Foo1")
	foo.Call(nil)
}

func BenchmarkSimpleFoo(b *testing.B) {
	b.ReportAllocs()
	var kltao Kltao
	for i := 0; i < b.N; i++ {
		SimpleFoo(kltao)
	}
}

func BenchmarkReflectFoo(b *testing.B) {
	b.ReportAllocs()
	var kltao Kltao
	for i := 0; i < b.N; i++ {
		ReflectFoo(kltao)
	}
}
