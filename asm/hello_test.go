package asm

import "testing"

func TestMake(t *testing.T) {
	var a int64 = 1
	var b int64 = 4

	ret := makeFuncStub(a, b)
	t.Log(ret)
	ret = fooWrap(5, -3)
	t.Log(ret)
}
