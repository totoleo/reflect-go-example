package asm

import (
	"fmt"
)

func makeFuncStub(a int64, b int64) int64

func callReflect(ctxt int64, frame int64) int64 {
	fmt.Println(ctxt, frame)
	var ret = ctxt + frame
	fmt.Println(ret)
	return ret
}
