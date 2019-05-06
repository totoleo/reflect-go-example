"".main STEXT size=160 args=0x0 locals=0x78
	0x0000 00000 (main.go:7)	TEXT	"".main(SB), ABIInternal, $120-0
	0x0000 00000 (main.go:7)	MOVQ	(TLS), CX
	0x0009 00009 (main.go:7)	CMPQ	SP, 16(CX)
	0x000d 00013 (main.go:7)	JLS	150
	0x0013 00019 (main.go:7)	SUBQ	$120, SP
	0x0017 00023 (main.go:7)	MOVQ	BP, 112(SP)
	0x001c 00028 (main.go:7)	LEAQ	112(SP), BP
	0x0021 00033 (main.go:7)	FUNCDATA	$0, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x0021 00033 (main.go:7)	FUNCDATA	$1, gclocals·d6c87e1e613370763384ad234357cff1(SB)
	0x0021 00033 (main.go:7)	FUNCDATA	$3, gclocals·9fb7f0986f647f17cb53dda1484e0f7a(SB)
	0x0021 00033 (main.go:8)	PCDATA	$2, $1
	0x0021 00033 (main.go:8)	PCDATA	$0, $0
	0x0021 00033 (main.go:8)	LEAQ	""..autotmp_2+56(SP), AX
	0x0026 00038 (main.go:8)	PCDATA	$0, $1
	0x0026 00038 (main.go:8)	MOVQ	AX, ""..autotmp_1+80(SP)
	0x002b 00043 (main.go:8)	PCDATA	$2, $0
	0x002b 00043 (main.go:8)	TESTB	AL, (AX)
	0x002d 00045 (main.go:8)	MOVQ	"".statictmp_0(SB), AX
	0x0034 00052 (main.go:8)	MOVQ	AX, ""..autotmp_2+56(SP)
	0x0039 00057 (main.go:8)	MOVUPS	"".statictmp_0+8(SB), X0
	0x0040 00064 (main.go:8)	MOVUPS	X0, ""..autotmp_2+64(SP)
	0x0045 00069 (main.go:8)	PCDATA	$2, $1
	0x0045 00069 (main.go:8)	PCDATA	$0, $0
	0x0045 00069 (main.go:8)	MOVQ	""..autotmp_1+80(SP), AX
	0x004a 00074 (main.go:8)	TESTB	AL, (AX)
	0x004c 00076 (main.go:8)	JMP	78
	0x004e 00078 (main.go:8)	MOVQ	AX, ""..autotmp_0+88(SP)
	0x0053 00083 (main.go:8)	MOVQ	$3, ""..autotmp_0+96(SP)
	0x005c 00092 (main.go:8)	MOVQ	$3, ""..autotmp_0+104(SP)
	0x0065 00101 (main.go:8)	PCDATA	$2, $0
	0x0065 00101 (main.go:8)	MOVQ	AX, (SP)
	0x0069 00105 (main.go:8)	MOVQ	$3, 8(SP)
	0x0072 00114 (main.go:8)	MOVQ	$3, 16(SP)
	0x007b 00123 (main.go:8)	PCDATA	$2, $1
	0x007b 00123 (main.go:8)	LEAQ	"".square·f(SB), AX
	0x0082 00130 (main.go:8)	PCDATA	$2, $0
	0x0082 00130 (main.go:8)	MOVQ	AX, 24(SP)
	0x0087 00135 (main.go:8)	CALL	"".map_by(SB)
	0x008c 00140 (main.go:9)	MOVQ	112(SP), BP
	0x0091 00145 (main.go:9)	ADDQ	$120, SP
	0x0095 00149 (main.go:9)	RET
	0x0096 00150 (main.go:9)	NOP
	0x0096 00150 (main.go:7)	PCDATA	$0, $-1
	0x0096 00150 (main.go:7)	PCDATA	$2, $-1
	0x0096 00150 (main.go:7)	CALL	runtime.morestack_noctxt(SB)
	0x009b 00155 (main.go:7)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 83  eH..%....H;a....
	0x0010 00 00 00 48 83 ec 78 48 89 6c 24 70 48 8d 6c 24  ...H..xH.l$pH.l$
	0x0020 70 48 8d 44 24 38 48 89 44 24 50 84 00 48 8b 05  pH.D$8H.D$P..H..
	0x0030 00 00 00 00 48 89 44 24 38 0f 10 05 00 00 00 00  ....H.D$8.......
	0x0040 0f 11 44 24 40 48 8b 44 24 50 84 00 eb 00 48 89  ..D$@H.D$P....H.
	0x0050 44 24 58 48 c7 44 24 60 03 00 00 00 48 c7 44 24  D$XH.D$`....H.D$
	0x0060 68 03 00 00 00 48 89 04 24 48 c7 44 24 08 03 00  h....H..$H.D$...
	0x0070 00 00 48 c7 44 24 10 03 00 00 00 48 8d 05 00 00  ..H.D$.....H....
	0x0080 00 00 48 89 44 24 18 e8 00 00 00 00 48 8b 6c 24  ..H.D$......H.l$
	0x0090 70 48 83 c4 78 c3 e8 00 00 00 00 e9 60 ff ff ff  pH..x.......`...
	rel 5+4 t=16 TLS+0
	rel 48+4 t=15 "".statictmp_0+0
	rel 60+4 t=15 "".statictmp_0+8
	rel 126+4 t=15 "".square·f+0
	rel 136+4 t=8 "".map_by+0
	rel 151+4 t=8 runtime.morestack_noctxt+0
"".map_by STEXT size=471 args=0x38 locals=0xa8
	0x0000 00000 (main.go:11)	TEXT	"".map_by(SB), ABIInternal, $168-56
	0x0000 00000 (main.go:11)	MOVQ	(TLS), CX
	0x0009 00009 (main.go:11)	LEAQ	-40(SP), AX
	0x000e 00014 (main.go:11)	CMPQ	AX, 16(CX)
	0x0012 00018 (main.go:11)	JLS	461
	0x0018 00024 (main.go:11)	SUBQ	$168, SP
	0x001f 00031 (main.go:11)	MOVQ	BP, 160(SP)
	0x0027 00039 (main.go:11)	LEAQ	160(SP), BP
	0x002f 00047 (main.go:11)	FUNCDATA	$0, gclocals·600c01c73f2af3e13ee3f17b5b7d5cd3(SB)
	0x002f 00047 (main.go:11)	FUNCDATA	$1, gclocals·b7bf2e6b1d57afa2bf68d8be2e49eb8e(SB)
	0x002f 00047 (main.go:11)	FUNCDATA	$3, gclocals·954ec8172fc7bbd6dd7aa5e6e0872296(SB)
	0x002f 00047 (main.go:11)	PCDATA	$2, $0
	0x002f 00047 (main.go:11)	PCDATA	$0, $0
	0x002f 00047 (main.go:11)	MOVQ	$0, "".~r2+208(SP)
	0x003b 00059 (main.go:11)	XORPS	X0, X0
	0x003e 00062 (main.go:11)	MOVUPS	X0, "".~r2+216(SP)
	0x0046 00070 (main.go:12)	MOVQ	"".items+192(SP), AX
	0x004e 00078 (main.go:12)	PCDATA	$2, $1
	0x004e 00078 (main.go:12)	MOVQ	"".items+176(SP), CX
	0x0056 00086 (main.go:12)	JMP	88
	0x0058 00088 (main.go:12)	PCDATA	$2, $-2
	0x0058 00088 (main.go:12)	PCDATA	$0, $-2
	0x0058 00088 (main.go:12)	JMP	90
	0x005a 00090 (main.go:12)	PCDATA	$2, $0
	0x005a 00090 (main.go:12)	PCDATA	$0, $1
	0x005a 00090 (main.go:12)	MOVQ	CX, "".newItems+112(SP)
	0x005f 00095 (main.go:12)	MOVQ	$0, "".newItems+120(SP)
	0x0068 00104 (main.go:12)	MOVQ	AX, "".newItems+128(SP)
	0x0070 00112 (main.go:13)	MOVQ	"".items+192(SP), AX
	0x0078 00120 (main.go:13)	PCDATA	$2, $1
	0x0078 00120 (main.go:13)	MOVQ	"".items+176(SP), CX
	0x0080 00128 (main.go:13)	PCDATA	$0, $2
	0x0080 00128 (main.go:13)	MOVQ	"".items+184(SP), BX
	0x0088 00136 (main.go:13)	PCDATA	$2, $0
	0x0088 00136 (main.go:13)	PCDATA	$0, $3
	0x0088 00136 (main.go:13)	MOVQ	CX, ""..autotmp_5+136(SP)
	0x0090 00144 (main.go:13)	MOVQ	BX, ""..autotmp_5+144(SP)
	0x0098 00152 (main.go:13)	MOVQ	AX, ""..autotmp_5+152(SP)
	0x00a0 00160 (main.go:13)	MOVQ	$0, ""..autotmp_7+88(SP)
	0x00a9 00169 (main.go:13)	MOVQ	""..autotmp_5+144(SP), AX
	0x00b1 00177 (main.go:13)	MOVQ	AX, ""..autotmp_8+80(SP)
	0x00b6 00182 (main.go:13)	JMP	184
	0x00b8 00184 (main.go:13)	MOVQ	""..autotmp_8+80(SP), AX
	0x00bd 00189 (main.go:13)	CMPQ	""..autotmp_7+88(SP), AX
	0x00c2 00194 (main.go:13)	JLT	201
	0x00c4 00196 (main.go:13)	JMP	403
	0x00c9 00201 (main.go:13)	MOVQ	""..autotmp_7+88(SP), AX
	0x00ce 00206 (main.go:13)	SHLQ	$3, AX
	0x00d2 00210 (main.go:13)	PCDATA	$2, $2
	0x00d2 00210 (main.go:13)	ADDQ	""..autotmp_5+136(SP), AX
	0x00da 00218 (main.go:13)	PCDATA	$2, $0
	0x00da 00218 (main.go:13)	MOVQ	(AX), AX
	0x00dd 00221 (main.go:13)	MOVQ	AX, ""..autotmp_9+72(SP)
	0x00e2 00226 (main.go:13)	MOVQ	AX, "".item+64(SP)
	0x00e7 00231 (main.go:14)	PCDATA	$2, $3
	0x00e7 00231 (main.go:14)	MOVQ	"".f+200(SP), DX
	0x00ef 00239 (main.go:14)	MOVQ	AX, (SP)
	0x00f3 00243 (main.go:14)	MOVQ	(DX), AX
	0x00f6 00246 (main.go:14)	PCDATA	$2, $0
	0x00f6 00246 (main.go:14)	CALL	AX
	0x00f8 00248 (main.go:14)	MOVQ	8(SP), AX
	0x00fd 00253 (main.go:14)	MOVQ	AX, ""..autotmp_6+96(SP)
	0x0102 00258 (main.go:14)	PCDATA	$2, $2
	0x0102 00258 (main.go:14)	MOVQ	"".newItems+112(SP), AX
	0x0107 00263 (main.go:14)	MOVQ	"".newItems+120(SP), CX
	0x010c 00268 (main.go:14)	PCDATA	$0, $4
	0x010c 00268 (main.go:14)	MOVQ	"".newItems+128(SP), BX
	0x0114 00276 (main.go:14)	LEAQ	1(CX), SI
	0x0118 00280 (main.go:14)	CMPQ	SI, BX
	0x011b 00283 (main.go:14)	JLS	287
	0x011d 00285 (main.go:14)	JMP	336
	0x011f 00287 (main.go:14)	PCDATA	$2, $-2
	0x011f 00287 (main.go:14)	PCDATA	$0, $-2
	0x011f 00287 (main.go:14)	JMP	289
	0x0121 00289 (main.go:14)	PCDATA	$2, $2
	0x0121 00289 (main.go:14)	PCDATA	$0, $4
	0x0121 00289 (main.go:14)	MOVQ	""..autotmp_6+96(SP), DI
	0x0126 00294 (main.go:14)	MOVQ	DI, (AX)(CX*8)
	0x012a 00298 (main.go:14)	PCDATA	$2, $0
	0x012a 00298 (main.go:14)	PCDATA	$0, $3
	0x012a 00298 (main.go:14)	MOVQ	AX, "".newItems+112(SP)
	0x012f 00303 (main.go:14)	MOVQ	SI, "".newItems+120(SP)
	0x0134 00308 (main.go:14)	MOVQ	BX, "".newItems+128(SP)
	0x013c 00316 (main.go:14)	JMP	318
	0x013e 00318 (main.go:13)	MOVQ	""..autotmp_7+88(SP), AX
	0x0143 00323 (main.go:13)	INCQ	AX
	0x0146 00326 (main.go:13)	MOVQ	AX, ""..autotmp_7+88(SP)
	0x014b 00331 (main.go:13)	JMP	184
	0x0150 00336 (main.go:14)	PCDATA	$2, $2
	0x0150 00336 (main.go:14)	PCDATA	$0, $4
	0x0150 00336 (main.go:14)	MOVQ	CX, ""..autotmp_10+104(SP)
	0x0155 00341 (main.go:14)	PCDATA	$2, $4
	0x0155 00341 (main.go:14)	LEAQ	type.int64(SB), DX
	0x015c 00348 (main.go:14)	PCDATA	$2, $2
	0x015c 00348 (main.go:14)	MOVQ	DX, (SP)
	0x0160 00352 (main.go:14)	PCDATA	$2, $0
	0x0160 00352 (main.go:14)	MOVQ	AX, 8(SP)
	0x0165 00357 (main.go:14)	MOVQ	CX, 16(SP)
	0x016a 00362 (main.go:14)	MOVQ	BX, 24(SP)
	0x016f 00367 (main.go:14)	MOVQ	SI, 32(SP)
	0x0174 00372 (main.go:14)	CALL	runtime.growslice(SB)
	0x0179 00377 (main.go:14)	PCDATA	$2, $2
	0x0179 00377 (main.go:14)	MOVQ	40(SP), AX
	0x017e 00382 (main.go:14)	MOVQ	48(SP), CX
	0x0183 00387 (main.go:14)	MOVQ	56(SP), BX
	0x0188 00392 (main.go:14)	LEAQ	1(CX), SI
	0x018c 00396 (main.go:14)	MOVQ	""..autotmp_10+104(SP), CX
	0x0191 00401 (main.go:14)	JMP	289
	0x0193 00403 (main.go:16)	PCDATA	$0, $5
	0x0193 00403 (main.go:16)	MOVQ	"".newItems+112(SP), AX
	0x0198 00408 (main.go:16)	MOVQ	"".newItems+120(SP), CX
	0x019d 00413 (main.go:16)	PCDATA	$0, $6
	0x019d 00413 (main.go:16)	MOVQ	"".newItems+128(SP), DX
	0x01a5 00421 (main.go:16)	PCDATA	$2, $0
	0x01a5 00421 (main.go:16)	PCDATA	$0, $7
	0x01a5 00421 (main.go:16)	MOVQ	AX, "".~r2+208(SP)
	0x01ad 00429 (main.go:16)	MOVQ	CX, "".~r2+216(SP)
	0x01b5 00437 (main.go:16)	MOVQ	DX, "".~r2+224(SP)
	0x01bd 00445 (main.go:16)	MOVQ	160(SP), BP
	0x01c5 00453 (main.go:16)	ADDQ	$168, SP
	0x01cc 00460 (main.go:16)	RET
	0x01cd 00461 (main.go:16)	NOP
	0x01cd 00461 (main.go:11)	PCDATA	$0, $-1
	0x01cd 00461 (main.go:11)	PCDATA	$2, $-1
	0x01cd 00461 (main.go:11)	CALL	runtime.morestack_noctxt(SB)
	0x01d2 00466 (main.go:11)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 8d 44 24 d8 48 3b  eH..%....H.D$.H;
	0x0010 41 10 0f 86 b5 01 00 00 48 81 ec a8 00 00 00 48  A.......H......H
	0x0020 89 ac 24 a0 00 00 00 48 8d ac 24 a0 00 00 00 48  ..$....H..$....H
	0x0030 c7 84 24 d0 00 00 00 00 00 00 00 0f 57 c0 0f 11  ..$.........W...
	0x0040 84 24 d8 00 00 00 48 8b 84 24 c0 00 00 00 48 8b  .$....H..$....H.
	0x0050 8c 24 b0 00 00 00 eb 00 eb 00 48 89 4c 24 70 48  .$........H.L$pH
	0x0060 c7 44 24 78 00 00 00 00 48 89 84 24 80 00 00 00  .D$x....H..$....
	0x0070 48 8b 84 24 c0 00 00 00 48 8b 8c 24 b0 00 00 00  H..$....H..$....
	0x0080 48 8b 9c 24 b8 00 00 00 48 89 8c 24 88 00 00 00  H..$....H..$....
	0x0090 48 89 9c 24 90 00 00 00 48 89 84 24 98 00 00 00  H..$....H..$....
	0x00a0 48 c7 44 24 58 00 00 00 00 48 8b 84 24 90 00 00  H.D$X....H..$...
	0x00b0 00 48 89 44 24 50 eb 00 48 8b 44 24 50 48 39 44  .H.D$P..H.D$PH9D
	0x00c0 24 58 7c 05 e9 ca 00 00 00 48 8b 44 24 58 48 c1  $X|......H.D$XH.
	0x00d0 e0 03 48 03 84 24 88 00 00 00 48 8b 00 48 89 44  ..H..$....H..H.D
	0x00e0 24 48 48 89 44 24 40 48 8b 94 24 c8 00 00 00 48  $HH.D$@H..$....H
	0x00f0 89 04 24 48 8b 02 ff d0 48 8b 44 24 08 48 89 44  ..$H....H.D$.H.D
	0x0100 24 60 48 8b 44 24 70 48 8b 4c 24 78 48 8b 9c 24  $`H.D$pH.L$xH..$
	0x0110 80 00 00 00 48 8d 71 01 48 39 de 76 02 eb 31 eb  ....H.q.H9.v..1.
	0x0120 00 48 8b 7c 24 60 48 89 3c c8 48 89 44 24 70 48  .H.|$`H.<.H.D$pH
	0x0130 89 74 24 78 48 89 9c 24 80 00 00 00 eb 00 48 8b  .t$xH..$......H.
	0x0140 44 24 58 48 ff c0 48 89 44 24 58 e9 68 ff ff ff  D$XH..H.D$X.h...
	0x0150 48 89 4c 24 68 48 8d 15 00 00 00 00 48 89 14 24  H.L$hH......H..$
	0x0160 48 89 44 24 08 48 89 4c 24 10 48 89 5c 24 18 48  H.D$.H.L$.H.\$.H
	0x0170 89 74 24 20 e8 00 00 00 00 48 8b 44 24 28 48 8b  .t$ .....H.D$(H.
	0x0180 4c 24 30 48 8b 5c 24 38 48 8d 71 01 48 8b 4c 24  L$0H.\$8H.q.H.L$
	0x0190 68 eb 8e 48 8b 44 24 70 48 8b 4c 24 78 48 8b 94  h..H.D$pH.L$xH..
	0x01a0 24 80 00 00 00 48 89 84 24 d0 00 00 00 48 89 8c  $....H..$....H..
	0x01b0 24 d8 00 00 00 48 89 94 24 e0 00 00 00 48 8b ac  $....H..$....H..
	0x01c0 24 a0 00 00 00 48 81 c4 a8 00 00 00 c3 e8 00 00  $....H..........
	0x01d0 00 00 e9 29 fe ff ff                             ...)...
	rel 5+4 t=16 TLS+0
	rel 246+0 t=11 +0
	rel 344+4 t=15 type.int64+0
	rel 373+4 t=8 runtime.growslice+0
	rel 462+4 t=8 runtime.morestack_noctxt+0
"".square STEXT size=114 args=0x10 locals=0x28
	0x0000 00000 (main.go:19)	TEXT	"".square(SB), ABIInternal, $40-16
	0x0000 00000 (main.go:19)	MOVQ	(TLS), CX
	0x0009 00009 (main.go:19)	CMPQ	SP, 16(CX)
	0x000d 00013 (main.go:19)	JLS	107
	0x000f 00015 (main.go:19)	SUBQ	$40, SP
	0x0013 00019 (main.go:19)	MOVQ	BP, 32(SP)
	0x0018 00024 (main.go:19)	LEAQ	32(SP), BP
	0x001d 00029 (main.go:19)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (main.go:19)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (main.go:19)	FUNCDATA	$3, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (main.go:19)	PCDATA	$2, $0
	0x001d 00029 (main.go:19)	PCDATA	$0, $0
	0x001d 00029 (main.go:19)	MOVQ	$0, "".~r1+56(SP)
	0x0026 00038 (main.go:20)	MOVQ	"".a+48(SP), AX
	0x002b 00043 (main.go:20)	XORPS	X0, X0
	0x002e 00046 (main.go:20)	CVTSQ2SD	AX, X0
	0x0033 00051 (main.go:20)	MOVSD	X0, (SP)
	0x0038 00056 (main.go:20)	MOVSD	$f64.4000000000000000(SB), X0
	0x0040 00064 (main.go:20)	MOVSD	X0, 8(SP)
	0x0046 00070 (main.go:20)	CALL	math.Pow(SB)
	0x004b 00075 (main.go:20)	MOVSD	16(SP), X0
	0x0051 00081 (main.go:20)	MOVSD	X0, ""..autotmp_2+24(SP)
	0x0057 00087 (main.go:20)	CVTTSD2SQ	X0, AX
	0x005c 00092 (main.go:20)	MOVQ	AX, "".~r1+56(SP)
	0x0061 00097 (main.go:20)	MOVQ	32(SP), BP
	0x0066 00102 (main.go:20)	ADDQ	$40, SP
	0x006a 00106 (main.go:20)	RET
	0x006b 00107 (main.go:20)	NOP
	0x006b 00107 (main.go:19)	PCDATA	$0, $-1
	0x006b 00107 (main.go:19)	PCDATA	$2, $-1
	0x006b 00107 (main.go:19)	CALL	runtime.morestack_noctxt(SB)
	0x0070 00112 (main.go:19)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 5c 48  eH..%....H;a.v\H
	0x0010 83 ec 28 48 89 6c 24 20 48 8d 6c 24 20 48 c7 44  ..(H.l$ H.l$ H.D
	0x0020 24 38 00 00 00 00 48 8b 44 24 30 0f 57 c0 f2 48  $8....H.D$0.W..H
	0x0030 0f 2a c0 f2 0f 11 04 24 f2 0f 10 05 00 00 00 00  .*.....$........
	0x0040 f2 0f 11 44 24 08 e8 00 00 00 00 f2 0f 10 44 24  ...D$.........D$
	0x0050 10 f2 0f 11 44 24 18 f2 48 0f 2c c0 48 89 44 24  ....D$..H.,.H.D$
	0x0060 38 48 8b 6c 24 20 48 83 c4 28 c3 e8 00 00 00 00  8H.l$ H..(......
	0x0070 eb 8e                                            ..
	rel 5+4 t=16 TLS+0
	rel 60+4 t=15 $f64.4000000000000000+0
	rel 71+4 t=8 math.Pow+0
	rel 108+4 t=8 runtime.morestack_noctxt+0
"".init STEXT size=100 args=0x0 locals=0x8
	0x0000 00000 (<autogenerated>:1)	TEXT	"".init(SB), ABIInternal, $8-0
	0x0000 00000 (<autogenerated>:1)	MOVQ	(TLS), CX
	0x0009 00009 (<autogenerated>:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (<autogenerated>:1)	JLS	93
	0x000f 00015 (<autogenerated>:1)	SUBQ	$8, SP
	0x0013 00019 (<autogenerated>:1)	MOVQ	BP, (SP)
	0x0017 00023 (<autogenerated>:1)	LEAQ	(SP), BP
	0x001b 00027 (<autogenerated>:1)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001b 00027 (<autogenerated>:1)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001b 00027 (<autogenerated>:1)	FUNCDATA	$3, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001b 00027 (<autogenerated>:1)	PCDATA	$2, $0
	0x001b 00027 (<autogenerated>:1)	PCDATA	$0, $0
	0x001b 00027 (<autogenerated>:1)	CMPB	"".initdone·(SB), $1
	0x0022 00034 (<autogenerated>:1)	JHI	38
	0x0024 00036 (<autogenerated>:1)	JMP	47
	0x0026 00038 (<autogenerated>:1)	PCDATA	$2, $-2
	0x0026 00038 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0026 00038 (<autogenerated>:1)	MOVQ	(SP), BP
	0x002a 00042 (<autogenerated>:1)	ADDQ	$8, SP
	0x002e 00046 (<autogenerated>:1)	RET
	0x002f 00047 (<autogenerated>:1)	PCDATA	$2, $0
	0x002f 00047 (<autogenerated>:1)	PCDATA	$0, $0
	0x002f 00047 (<autogenerated>:1)	CMPB	"".initdone·(SB), $1
	0x0036 00054 (<autogenerated>:1)	JEQ	58
	0x0038 00056 (<autogenerated>:1)	JMP	65
	0x003a 00058 (<autogenerated>:1)	CALL	runtime.throwinit(SB)
	0x003f 00063 (<autogenerated>:1)	UNDEF
	0x0041 00065 (<autogenerated>:1)	MOVB	$1, "".initdone·(SB)
	0x0048 00072 (<autogenerated>:1)	CALL	math.init(SB)
	0x004d 00077 (<autogenerated>:1)	MOVB	$2, "".initdone·(SB)
	0x0054 00084 (<autogenerated>:1)	MOVQ	(SP), BP
	0x0058 00088 (<autogenerated>:1)	ADDQ	$8, SP
	0x005c 00092 (<autogenerated>:1)	RET
	0x005d 00093 (<autogenerated>:1)	NOP
	0x005d 00093 (<autogenerated>:1)	PCDATA	$0, $-1
	0x005d 00093 (<autogenerated>:1)	PCDATA	$2, $-1
	0x005d 00093 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x0062 00098 (<autogenerated>:1)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 4e 48  eH..%....H;a.vNH
	0x0010 83 ec 08 48 89 2c 24 48 8d 2c 24 80 3d 00 00 00  ...H.,$H.,$.=...
	0x0020 00 01 77 02 eb 09 48 8b 2c 24 48 83 c4 08 c3 80  ..w...H.,$H.....
	0x0030 3d 00 00 00 00 01 74 02 eb 07 e8 00 00 00 00 0f  =.....t.........
	0x0040 0b c6 05 00 00 00 00 01 e8 00 00 00 00 c6 05 00  ................
	0x0050 00 00 00 02 48 8b 2c 24 48 83 c4 08 c3 e8 00 00  ....H.,$H.......
	0x0060 00 00 eb 9c                                      ....
	rel 5+4 t=16 TLS+0
	rel 29+4 t=15 "".initdone·+-1
	rel 49+4 t=15 "".initdone·+-1
	rel 59+4 t=8 runtime.throwinit+0
	rel 67+4 t=15 "".initdone·+-1
	rel 73+4 t=8 math.init+0
	rel 79+4 t=15 "".initdone·+-1
	rel 94+4 t=8 runtime.morestack_noctxt+0
go.loc."".main SDWARFLOC size=0
go.info."".main SDWARFINFO size=33
	0x0000 03 22 22 2e 6d 61 69 6e 00 00 00 00 00 00 00 00  ."".main........
	0x0010 00 00 00 00 00 00 00 00 00 01 9c 00 00 00 00 01  ................
	0x0020 00                                               .
	rel 9+8 t=1 "".main+0
	rel 17+8 t=1 "".main+160
	rel 27+4 t=29 gofile../Users/leo/go/src/github.com/totoleo/reflect-go-example/barrier/main.go+0
go.range."".main SDWARFRANGE size=0
go.isstmt."".main SDWARFMISC size=0
	0x0000 04 13 04 0e 03 05 01 61 02 19 00                 .......a...
go.loc."".map_by SDWARFLOC size=0
go.info."".map_by SDWARFINFO size=127
	0x0000 03 22 22 2e 6d 61 70 5f 62 79 00 00 00 00 00 00  ."".map_by......
	0x0010 00 00 00 00 00 00 00 00 00 00 00 01 9c 00 00 00  ................
	0x0020 00 01 0a 6e 65 77 49 74 65 6d 73 00 0c 00 00 00  ...newItems.....
	0x0030 00 02 91 40 0f 69 74 65 6d 73 00 00 0b 00 00 00  ...@.items......
	0x0040 00 01 9c 0f 66 00 00 0b 00 00 00 00 02 91 18 0f  ....f...........
	0x0050 7e 72 32 00 01 0b 00 00 00 00 02 91 20 15 00 00  ~r2......... ...
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0a 69  ...............i
	0x0070 74 65 6d 00 0d 00 00 00 00 03 91 90 7f 00 00     tem............
	rel 11+8 t=1 "".map_by+0
	rel 19+8 t=1 "".map_by+471
	rel 29+4 t=29 gofile../Users/leo/go/src/github.com/totoleo/reflect-go-example/barrier/main.go+0
	rel 45+4 t=28 go.info.[]int64+0
	rel 61+4 t=28 go.info.[]int64+0
	rel 72+4 t=28 go.info.func(int64) int64+0
	rel 86+4 t=28 go.info.[]int64+0
	rel 94+8 t=1 "".map_by+112
	rel 102+8 t=1 "".map_by+403
	rel 117+4 t=28 go.info.int64+0
go.range."".map_by SDWARFRANGE size=0
go.isstmt."".map_by SDWARFMISC size=0
	0x0000 04 18 04 17 03 0c 01 0b 02 08 01 22 02 08 01 40  ..........."...@
	0x0010 02 05 01 2a 02 08 01 07 02 02 01 29 02 05 01 18  ...*.......)....
	0x0020 02 05 01 0d 02 05 01 1f 02 05 01 1a 02 05 01 35  ...............5
	0x0030 02 0a 00                                         ...
go.loc."".square SDWARFLOC size=0
go.info."".square SDWARFINFO size=60
	0x0000 03 22 22 2e 73 71 75 61 72 65 00 00 00 00 00 00  ."".square......
	0x0010 00 00 00 00 00 00 00 00 00 00 00 01 9c 00 00 00  ................
	0x0020 00 01 0f 61 00 00 13 00 00 00 00 01 9c 0f 7e 72  ...a..........~r
	0x0030 31 00 01 13 00 00 00 00 02 91 08 00              1...........
	rel 11+8 t=1 "".square+0
	rel 19+8 t=1 "".square+114
	rel 29+4 t=29 gofile../Users/leo/go/src/github.com/totoleo/reflect-go-example/barrier/main.go+0
	rel 39+4 t=28 go.info.int64+0
	rel 52+4 t=28 go.info.int64+0
go.range."".square SDWARFRANGE size=0
go.isstmt."".square SDWARFMISC size=0
	0x0000 04 0f 04 0e 03 0e 01 1b 02 05 01 20 02 07 00     ........... ...
go.loc."".init SDWARFLOC size=0
go.info."".init SDWARFINFO size=33
	0x0000 03 22 22 2e 69 6e 69 74 00 00 00 00 00 00 00 00  ."".init........
	0x0010 00 00 00 00 00 00 00 00 00 01 9c 00 00 00 00 01  ................
	0x0020 00                                               .
	rel 9+8 t=1 "".init+0
	rel 17+8 t=1 "".init+100
	rel 27+4 t=29 gofile..<autogenerated>+0
go.range."".init SDWARFRANGE size=0
go.isstmt."".init SDWARFMISC size=0
	0x0000 04 0f 04 0c 03 07 01 04 02 09 01 0b 02 13 01 10  ................
	0x0010 02 07 00                                         ...
"".statictmp_0 SRODATA size=24
	0x0000 01 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	0x0010 03 00 00 00 00 00 00 00                          ........
"".initdone· SNOPTRBSS size=1
"".square·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".square+0
runtime.gcbits.01 SRODATA dupok size=1
	0x0000 01                                               .
type..namedata.*[]int64- SRODATA dupok size=11
	0x0000 00 00 08 2a 5b 5d 69 6e 74 36 34                 ...*[]int64
type.*[]int64 SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 2c 4e ee 91 00 08 08 36 00 00 00 00 00 00 00 00  ,N.....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]int64-+0
	rel 48+8 t=1 type.[]int64+0
type.[]int64 SRODATA dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 96 8e 76 88 02 08 08 17 00 00 00 00 00 00 00 00  ..v.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]int64-+0
	rel 44+4 t=6 type.*[]int64+0
	rel 48+8 t=1 type.int64+0
type..hashfunc24 SRODATA dupok size=16
	0x0000 00 00 00 00 00 00 00 00 18 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 runtime.memhash_varlen+0
type..eqfunc24 SRODATA dupok size=16
	0x0000 00 00 00 00 00 00 00 00 18 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 runtime.memequal_varlen+0
type..alg24 SRODATA dupok size=16
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 type..hashfunc24+0
	rel 8+8 t=1 type..eqfunc24+0
runtime.gcbits. SRODATA dupok size=0
type..namedata.*[3]int64- SRODATA dupok size=12
	0x0000 00 00 09 2a 5b 33 5d 69 6e 74 36 34              ...*[3]int64
type.[3]int64 SRODATA dupok size=72
	0x0000 18 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 1c ef 86 42 02 08 08 91 00 00 00 00 00 00 00 00  ...B............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 03 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 type..alg24+0
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type..namedata.*[3]int64-+0
	rel 44+4 t=6 type.*[3]int64+0
	rel 48+8 t=1 type.int64+0
	rel 56+8 t=1 type.[]int64+0
type.*[3]int64 SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 81 ee ae 6b 00 08 08 36 00 00 00 00 00 00 00 00  ...k...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[3]int64-+0
	rel 48+8 t=1 type.[3]int64+0
type..namedata.*func(int64) int64- SRODATA dupok size=21
	0x0000 00 00 12 2a 66 75 6e 63 28 69 6e 74 36 34 29 20  ...*func(int64) 
	0x0010 69 6e 74 36 34                                   int64
type.*func(int64) int64 SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 f1 1d af e5 00 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(int64) int64-+0
	rel 48+8 t=1 type.func(int64) int64+0
type.func(int64) int64 SRODATA dupok size=72
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 44 bd 9d c0 02 08 08 33 00 00 00 00 00 00 00 00  D......3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 01 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(int64) int64-+0
	rel 44+4 t=6 type.*func(int64) int64+0
	rel 56+8 t=1 type.int64+0
	rel 64+8 t=1 type.int64+0
type..importpath.math. SRODATA dupok size=7
	0x0000 00 00 04 6d 61 74 68                             ...math
gclocals·69c1753bd5f81501d95132d08af04464 SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·d6c87e1e613370763384ad234357cff1 SRODATA dupok size=10
	0x0000 02 00 00 00 04 00 00 00 00 01                    ..........
gclocals·9fb7f0986f647f17cb53dda1484e0f7a SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 00 01                    ..........
gclocals·600c01c73f2af3e13ee3f17b5b7d5cd3 SRODATA dupok size=16
	0x0000 08 00 00 00 05 00 00 00 09 09 08 08 08 00 00 10  ................
gclocals·b7bf2e6b1d57afa2bf68d8be2e49eb8e SRODATA dupok size=16
	0x0000 08 00 00 00 06 00 00 00 00 01 01 09 08 01 00 00  ................
gclocals·954ec8172fc7bbd6dd7aa5e6e0872296 SRODATA dupok size=13
	0x0000 05 00 00 00 03 00 00 00 00 02 01 04 05           .............
gclocals·33cdeccccebe80329f1fdbee7f5874cb SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
