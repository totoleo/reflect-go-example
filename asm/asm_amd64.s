#include "textflag.h"

TEXT ·fooWrap2(SB),(NOSPLIT|WRAPPER),$24-8

	MOVQ	a+0(FP), CX
	MOVQ	CX, 0(SP)

	MOVQ	b+8(FP), CX
    MOVQ	CX, 8(SP)

	CALL	·foo2(SB)
	MOVQ 16(SP), AX // add 函数会把返回值放在这个位置
    MOVQ AX, ret+16(FP) // return result
	RET

TEXT ·fooWrap(SB),(NOSPLIT|WRAPPER),$24-8

	MOVQ	a+0(FP), CX
	MOVQ	CX, 0(SP)

	MOVQ	b+8(FP), CX
    MOVQ	CX, 8(SP)

    MOVB    $0, ret+16(FP) //初始化值
    LEAQ    ret+16(FP), CX //取返回值的指针
    MOVQ    CX,16(SP)      //将指针作为参数进栈

	CALL	·foo(SB)
	RET
