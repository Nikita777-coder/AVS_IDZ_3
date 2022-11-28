	.intel_syntax noprefix
	.text
	.globl	F
	.type	F, @function
F:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	movsd	QWORD PTR -8[rbp], xmm0     # -8[rbp] = x
	movsd	xmm0, QWORD PTR -8[rbp]     # можно оптимизировать
	movapd	xmm1, xmm0                  # можно оптимизировать
	mulsd	xmm1, xmm0                  # x * x
	movsd	xmm0, QWORD PTR .LC0[rip]   # xmm0 = 1
	addsd	xmm0, xmm1                  # 1 + x*x
	mov	rax, QWORD PTR .LC1[rip]
	movapd	xmm1, xmm0
	movq	xmm0, rax
	call	pow@PLT
	addsd	xmm0, QWORD PTR -8[rbp]
	movsd	xmm1, QWORD PTR .LC2[rip]
	subsd	xmm0, xmm1
	leave
	ret
	.globl	FindRoot
	.type	FindRoot, @function
FindRoot:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	QWORD PTR -24[rbp], rdi
	movsd	QWORD PTR -32[rbp], xmm0
	movsd	QWORD PTR -40[rbp], xmm1
	movsd	QWORD PTR -48[rbp], xmm2
	jmp	.L4
.L7:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	movq	xmm0, rax
	call	rdx
	mulsd	xmm0, QWORD PTR -32[rbp]
	movsd	QWORD PTR -56[rbp], xmm0
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	movq	xmm0, rax
	call	rdx
	mulsd	xmm0, QWORD PTR -40[rbp]
	movsd	xmm3, QWORD PTR -56[rbp]
	subsd	xmm3, xmm0
	movsd	QWORD PTR -56[rbp], xmm3
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	movq	xmm0, rax
	call	rdx
	movsd	QWORD PTR -64[rbp], xmm0
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	movq	xmm0, rax
	call	rdx
	movsd	xmm4, QWORD PTR -64[rbp]
	subsd	xmm4, xmm0
	movapd	xmm0, xmm4
	movsd	xmm3, QWORD PTR -56[rbp]
	divsd	xmm3, xmm0
	movapd	xmm0, xmm3
	movsd	QWORD PTR -8[rbp], xmm0
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	movq	xmm0, rax
	call	rdx
	movsd	QWORD PTR -56[rbp], xmm0
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	movq	xmm0, rax
	call	rdx
	mulsd	xmm0, QWORD PTR -56[rbp]
	pxor	xmm1, xmm1
	comisd	xmm0, xmm1
	jbe	.L10
	movsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR -32[rbp], xmm0
	jmp	.L4
.L10:
	movsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR -40[rbp], xmm0
.L4:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	movq	xmm0, rax
	call	rdx
	movsd	QWORD PTR -56[rbp], xmm0
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	movq	xmm0, rax
	call	rdx
	movsd	xmm5, QWORD PTR -56[rbp]
	subsd	xmm5, xmm0
	movapd	xmm0, xmm5
	movq	xmm1, QWORD PTR .LC4[rip]
	andpd	xmm0, xmm1
	comisd	xmm0, QWORD PTR -48[rbp]
	ja	.L7
	movsd	xmm0, QWORD PTR -8[rbp]
	leave
	ret
	.globl	GetTimeOfFindRoot
	.type	GetTimeOfFindRoot, @function
GetTimeOfFindRoot:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	call	clock@PLT
	mov	QWORD PTR -8[rbp], rax
	movsd	xmm1, QWORD PTR .LC5[rip]
	movsd	xmm0, QWORD PTR .LC0[rip]
	movapd	xmm2, xmm1
	movapd	xmm1, xmm0
	pxor	xmm0, xmm0
	lea	rdi, F[rip]
	call	FindRoot
	call	clock@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	sub	rax, QWORD PTR -8[rbp]
	cvtsi2sd	xmm0, rax
	movsd	xmm1, QWORD PTR .LC6[rip]
	divsd	xmm0, xmm1
	leave
	ret
	.globl	IsIntervalCorrect
	.type	IsIntervalCorrect, @function
IsIntervalCorrect:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	QWORD PTR -16[rbp], xmm1
	mov	rax, QWORD PTR -8[rbp]
	movq	xmm0, rax
	call	F
	movsd	QWORD PTR -24[rbp], xmm0
	mov	rax, QWORD PTR -16[rbp]
	movq	xmm0, rax
	call	F
	mulsd	xmm0, QWORD PTR -24[rbp]
	pxor	xmm1, xmm1
	comisd	xmm0, xmm1
	jbe	.L18
	mov	eax, 0
	jmp	.L16
.L18:
	mov	eax, 1
.L16:
	leave
	ret
	.size	IsIntervalCorrect, .-IsIntervalCorrect
	.globl	IsErrorCorrect
	.type	IsErrorCorrect, @function
IsErrorCorrect:
	push	rbp
	mov	rbp, rsp
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR -8[rbp]
	comisd	xmm0, QWORD PTR .LC7[rip]
	ja	.L20
	movsd	xmm0, QWORD PTR .LC8[rip]
	comisd	xmm0, QWORD PTR -8[rbp]
	jbe	.L24
.L20:
	mov	eax, 0
	jmp	.L23
.L24:
	mov	eax, 1
.L23:
	pop	rbp
	ret
	.globl	GetTimeOfIsErrorCorrect
	.type	GetTimeOfIsErrorCorrect, @function
GetTimeOfIsErrorCorrect:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	call	clock@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR .LC9[rip]
	movq	xmm0, rax
	call	IsErrorCorrect
	call	clock@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	sub	rax, QWORD PTR -8[rbp]
	cvtsi2sd	xmm0, rax
	movsd	xmm1, QWORD PTR .LC6[rip]
	divsd	xmm0, xmm1
	leave
	ret
	.globl	GetCorrectInterval
	.type	GetCorrectInterval, @function
GetCorrectInterval:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -32[rbp]
	movsd	xmm0, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	movapd	xmm1, xmm0
	movq	xmm0, rax
	call	IsIntervalCorrect
	mov	BYTE PTR -1[rbp], al
	movzx	eax, BYTE PTR -1[rbp]
	xor	eax, 1
	test	al, al
	je	.L27
	mov	rax, QWORD PTR -24[rbp]
	movsd	xmm0, QWORD PTR [rax]
	movsd	xmm1, QWORD PTR .LC0[rip]
	subsd	xmm0, xmm1
	mov	rax, QWORD PTR -24[rbp]
	movsd	QWORD PTR [rax], xmm0
	mov	rax, QWORD PTR -32[rbp]
	movsd	xmm0, QWORD PTR [rax]
	movsd	xmm1, QWORD PTR .LC0[rip]
	subsd	xmm0, xmm1
	mov	rax, QWORD PTR -32[rbp]
	movsd	QWORD PTR [rax], xmm0
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	GetCorrectInterval
.L27:
	leave
	ret
	.globl	GetTimeOfGetCorrectInterval
	.type	GetTimeOfGetCorrectInterval, @function
GetTimeOfGetCorrectInterval:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	movsd	xmm0, QWORD PTR .LC1[rip]
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC2[rip]
	movsd	QWORD PTR -32[rbp], xmm0
	call	clock@PLT
	mov	QWORD PTR -8[rbp], rax
	lea	rdx, -32[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	GetCorrectInterval
	call	clock@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	sub	rax, QWORD PTR -8[rbp]
	cvtsi2sd	xmm0, rax
	movsd	xmm1, QWORD PTR .LC6[rip]
	divsd	xmm0, xmm1
	leave
	ret
	.globl	GetRandomError
	.type	GetRandomError, @function
GetRandomError:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	edi, 0
	call	time@PLT
	mov	edi, eax
	call	srand@PLT
	call	rand@PLT
	cvtsi2sd	xmm0, eax
	movsd	xmm1, QWORD PTR .LC10[rip]
	divsd	xmm0, xmm1
	movapd	xmm1, xmm0
	movsd	xmm0, QWORD PTR .LC11[rip]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR .LC8[rip]
	addsd	xmm0, xmm1
	mov	rax, QWORD PTR -8[rbp]
	movsd	QWORD PTR [rax], xmm0
	nop
	leave
	ret
	.globl	GetTimeOfGetRandomError
	.type	GetTimeOfGetRandomError, @function
GetTimeOfGetRandomError:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	movsd	xmm0, QWORD PTR .LC5[rip]
	movsd	QWORD PTR -24[rbp], xmm0
	call	clock@PLT
	mov	QWORD PTR -8[rbp], rax
	lea	rax, -24[rbp]
	mov	rdi, rax
	call	GetRandomError
	call	clock@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	sub	rax, QWORD PTR -8[rbp]
	cvtsi2sd	xmm0, rax
	movsd	xmm1, QWORD PTR .LC6[rip]
	divsd	xmm0, xmm1
	leave
	ret
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC1:
	.long	0
	.long	1073741824
	.align 8
.LC2:
	.long	0
	.long	1074266112
	.align 16
.LC4:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC5:
	.long	2296604913
	.long	1055193269
	.align 8
.LC6:
	.long	0
	.long	1093567616
	.align 8
.LC7:
	.long	3539053052
	.long	1062232653
	.align 8
.LC8:
	.long	3794832442
	.long	1044740494
	.align 8
.LC9:
	.long	3944497965
	.long	1058682594
	.align 8
.LC10:
	.long	4290772992
	.long	1105199103
	.align 8
.LC11:
	.long	371865828
	.long	1062232643
