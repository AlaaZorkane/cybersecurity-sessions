	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.intel_syntax noprefix
	.globl	_ft_strdup
	.p2align	4, 0x90
_ft_strdup:                             ## @ft_strdup
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
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 20], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	cmp	byte ptr [rax + rcx], 0
	je	LBB0_3
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_1
LBB0_3:
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	movsxd	rdi, eax
	call	_malloc
	mov	qword ptr [rbp - 16], rax
	mov	dword ptr [rbp - 20], 0
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	cmp	byte ptr [rax + rcx], 0
	je	LBB0_6
## BB#5:                                ##   in Loop: Header=BB0_4 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	dl, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	byte ptr [rax + rcx], dl
	jmp	LBB0_4
LBB0_6:
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	byte ptr [rax + rcx], 0
	mov	rax, qword ptr [rbp - 16]
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc


.subsections_via_symbols
