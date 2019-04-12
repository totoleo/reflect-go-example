package asm

import "testing"

func TestMake(t *testing.T) {
	var a int64 = 1
	var b int64 = 2

	ret := makeFuncStub(a, b)
	t.Log(ret)
}
