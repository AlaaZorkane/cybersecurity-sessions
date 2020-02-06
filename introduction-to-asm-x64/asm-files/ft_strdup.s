	global	_ft_strdup ; char *ft_strdup(const char *s1);
	extern	_malloc
_ft_strdup:
	mov		rax, 0
	mov		rcx, 0
len:
	mov		cl, [rdi + rax] ; s1[rax]
	cmp		rcx, 0 ; s1[rax] == '\0'
	jne		len_reloop
	jmp		allocate
len_reloop:
	inc		rax
	jmp		len
allocate:
	mov		r15, rdi ; save s1
	inc		rax
	mov		rdi, rax ; malloc arg1
	push	rdi
	call	_malloc
	pop		rdi
	mov		rdi, rax ; put return pointer to rdi
	cmp		rax, 0 ; malloc protection
	jne		strcpy
	ret
strcpy:
	mov		rcx, 0
	mov		rax, 0
loop:
	mov		cl, [r15 + rax] ; s1[rax] ITS HERE
	cmp		cl, 0 ; s1[rax] == 0
	je		end
	mov		[rdi + rax], cl ; dest[rax] = src[rax]
	inc		rax ; rax++;
	jmp		loop
end:
	mov		cl, 0
	mov		[rdi + rax], cl ; result[rax] = '\0'
	mov		rax, rdi ; rax = result
	ret

