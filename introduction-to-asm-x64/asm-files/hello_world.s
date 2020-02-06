section .text
	global _start
_start:
	mov		rax, 0x2000004
	mov		rdi, 1
	mov		rsi, msg
	mov		rdx, 14
	syscall
end:
	mov		rax, 0x2000001
	mov		rdi, 0
	syscall

section .data
	msg: db "Hello World", 0xa
