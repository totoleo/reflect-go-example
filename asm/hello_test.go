package asm

import "testing"

func TestMake(t *testing.T) {
	ret := fooWrap2(3333331, 2)
	t.Log(ret)
	ret = fooWrap(3333336, -3)
	t.Log(ret)
}
