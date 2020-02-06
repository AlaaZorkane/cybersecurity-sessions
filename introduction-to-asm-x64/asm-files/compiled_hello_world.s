	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.intel_syntax noprefix
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	push	rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Lcfi2:
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	edi, 1
	lea	rsi, [rip + L_.str]
	mov	eax, 14
	mov	edx, eax
	call	_write
	xor	edi, edi
	mov	qword ptr [rbp - 8], rax ## 8-byte Spill
	mov	eax, edi
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Hello World!\n"


.subsections_via_symbols
