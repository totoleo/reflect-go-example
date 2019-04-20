package asm

import "fmt"

func makeFuncStub(a int64, b int64) int64
func fooWrap(a, b int64) int64

func callReflect(ctxt int64, frame int64) int64 {
	var ret = ctxt + frame
	return ret
}

func foo(a, b int64, ret *int64) {
	*ret = a + b
	fmt.Println(a, b, ret, *ret)
}
