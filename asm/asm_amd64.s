#include "textflag.h"

TEXT ·makeFuncStub(SB),(NOSPLIT|WRAPPER),$24-8

    MOVQ	DX, 0(SP)


	MOVQ	b+8(FP), CX
    MOVQ	CX, 8(SP)

	CALL	·callReflect(SB)
	MOVQ 16(SP), AX // add 函数会把返回值放在这个位置
    MOVQ AX, ret+16(FP) // return result
	RET


