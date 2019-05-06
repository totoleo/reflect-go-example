package asm

func fooWrap2(a int64, b int64) int64
func fooWrap(a, b int64) int64

func foo2(ctxt int64, frame int64) int64 {
	return ctxt + frame
}

func foo(a, b int64, ret *int64) {
	*ret = a + b
}
