# Introduction to ASM x64

## Tools used

- GCC
- NASM
- Visual Studio Code
- WSL
- Cutter
- lldb/gdb

## Commands used

```bash
gcc -c -S -masm=intel -O0 ft_strdup.c -o compiled_ft_strdup.s
```
```bash
nasm -fmacho64 -g ft_strdup.s -o ft_strdup.o
```
```bash
lldb ./a.out
> b main
> run [arg]
> ni
> expr $rax = 0
```
