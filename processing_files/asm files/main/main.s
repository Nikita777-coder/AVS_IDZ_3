    .intel_syntax noprefix
	.text
	.section	.rodata
	.align 8
.LC2:
	.string	"\320\230\320\267\320\275\320\260\321\207\320\260\320\273\321\214\320\275\321\213\320\271 \320\270\320\275\321\202\321\200\320\265\320\262\320\260\320\273 \320\275\320\265\320\272\320\276\321\200\321\200\320\265\320\272\321\202\320\275\321\213\320\271. \320\237\320\276\321\215\321\202\320\276\320\274\321\203 \320\277\320\276\320\270\321\201\320\272 \320\272\320\276\321\200\320\275\321\217 \320\261\321\203\320\264\320\265\321\202 \320\262\320\265\321\201\321\202\320\270\321\201\321\214 \320\262 \320\264\320\270\320\260\320\277\320\276\320\267\320\276\320\275\320\265 [%lf, %lf]\n"
.LC3:
	.string	"r"
	.align 8
.LC4:
	.string	"\320\244\320\260\320\271\320\273\320\260 \320\275\320\265 \321\201\321\203\321\211\320\265\321\201\321\202\320\262\321\203\320\265\321\202"
	.align 8
.LC5:
	.ascii	"\320\243\320\272"
	.string	"\320\260\320\267\320\260\320\275\320\276 \320\275\320\265\320\264\320\276\320\277\321\203\321\201\321\202\320\270\320\274\320\276\320\265 \320\272\320\276\320\273-\320\262\320\276 \320\277\320\260\321\200\320\260\320\274\320\265\321\202\321\200\320\276\320\262! (\320\272\320\276\320\275\321\201\320\276\320\273\321\214\320\275\321\213\321\205 \320\277\320\260\321\200\320\260\320\274\320\265\321\202\321\200\320\276\320\262 \320\273\320\270\320\261\320\276 \320\275\320\265 \320\264\320\276\320\273\320\266\320\275\320\276 \320\261\321\213\321\202\321\214, \320\273\320\270\320\261\320\276 \320\264\320\276\320\273\320\266\320\275\321\213 \321\203\320\272\320\260\320\267\321\213\320\262\320\260\321\202\321\214\321\201\321\217 \320\277\321\203\321\202\320\270 \320\262\321\205\320\276\320\264\320\275\320\276\320\263\320\276 \320\270 \320\262\321\213\321\205\320\276\320\264\320\275\320\276\320\263\320\276 \321\204\320\260\320\271\320\273\320\276\320\262)"
	.align 8
.LC6:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \321\201\320\277\320\276\321\201\320\276\320\261 \320\277\321\200\320\270\320\262\320\260\320\270\320\262\320\260\320\275\320\270\321\217 \321\202\320\276\321\207\320\275\320\276\321\201\321\202\320\270 \320\277\320\276\320\270\321\201\320\272\320\260 \320\272\320\276\321\200\320\275\321\217: "
.LC7:
	.string	"%c"
	.align 8
.LC8:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \321\202\320\276\321\207\320\275\320\276\321\201\321\202\321\214 \320\277\320\276\320\270\321\201\320\272\320\260 \320\272\320\276\321\200\320\275\321\217: "
.LC9:
	.string	"%lf"
	.align 8
.LC10:
	.string	"\320\241\320\263\320\265\320\275\320\265\321\200\320\270\321\200\320\276\320\262\320\260\320\275\320\275\320\260\321\217 \321\202\320\276\321\207\320\275\320\276\321\207\321\202\321\214 = %lf\n"
	.align 8
.LC11:
	.string	"\320\235\320\265\320\270\320\267\320\262\320\265\321\201\321\202\320\275\320\260\321\217 \320\272\320\276\320\274\320\260\320\275\320\264\320\260!"
.LC12:
	.string	"x = %lf\n"
.LC13:
	.string	"w"
	.align 8
.LC14:
	.string	"\320\242\320\276\321\207\320\275\320\276\321\201\321\202\321\214 \320\277\320\276\320\270\321\201\320\272\320\260 \320\272\320\276\321\200\320\275\321\217 \320\264\320\276\320\273\320\266\320\275\320\260 \320\261\321\213\321\202\321\214 >= 0.001 \320\270 <= 0.00000001"
	.align 8
.LC16:
	.string	"\320\222\321\200\320\265\320\274\321\217 \320\262\321\213\320\277\320\276\320\273\320\275\320\265\320\275\320\270\321\217 \320\277\321\200\320\276\320\263\321\200\320\260\320\274\320\274\321\213 \320\261\320\265\320\267 input/output = %lf \321\201\320\265\320\272\321\203\320\275\320\264(\321\213), \320\260 \321\201 input/output = %lf \321\201\320\265\320\272\321\203\320\275\320\264(\321\213)\n"
	.text
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1984                       # Выделение 1984 байт под функцию
	mov	DWORD PTR -1956[rbp], edi
	mov	QWORD PTR -1968[rbp], rsi
	call	clock@PLT                   # rax = clock()
	mov	QWORD PTR -56[rbp], rax         # begin = rax
	mov	BYTE PTR -1[rbp], 0             # bool from_file = false (0)
	mov	QWORD PTR -40[rbp], 0           # FILE input, output = NULL (0)
	movsd	xmm0, QWORD PTR .LC0[rip]   # 2 в double для a
	movsd	QWORD PTR -88[rbp], xmm0    # double a = 2
	movsd	xmm0, QWORD PTR .LC1[rip]
	movsd	QWORD PTR -96[rbp], xmm0    # b = 3
	lea	rdx, -96[rbp]                   # rdx = &b
	lea	rax, -88[rbp]                   # rax = &a
	mov	rsi, rdx
	mov	rdi, rax
	call	GetCorrectInterval@PLT      # переход в функцию GetCorrectInterval
	movsd	xmm0, QWORD PTR -88[rbp]    # xmm0 = a
	ucomisd	xmm0, QWORD PTR .LC0[rip]   # a != 2
	jp	.L2                             # переход к телу if (a != 2), если условие было выполнено
	ucomisd	xmm0, QWORD PTR .LC0[rip]
	jne	.L2                             # переход к следующей строке, если (a != 2) == 0
	movsd	xmm0, QWORD PTR -96[rbp]
	ucomisd	xmm0, QWORD PTR .LC1[rip]
	jp	.L2
	ucomisd	xmm0, QWORD PTR .LC1[rip]
	je	.L3                             # переход к проверке аргументов
# Тело первого if
.L2:
	movsd	xmm0, QWORD PTR -96[rbp]    # xmm0 = b
	mov	rax, QWORD PTR -88[rbp]         # rax = a
	movapd	xmm1, xmm0                  # xmm1 = xmm0 (можно удалить, оптимизировать)
	movq	xmm0, rax                   # xmm0 = rax (можно удалить, оптимизировать)
	lea	rdi, .LC2[rip]                  # "Изначальный интревал...
	mov	eax, 2
	call	printf@PLT                  # printf
.L3:
	cmp	DWORD PTR -1956[rbp], 3         # argc == 3
	jne	.L5                             # переход к else if (argc == 1), если (argc == 3) == 0
	mov	eax, DWORD PTR optind[rip]      # eax = optind (для for)
	mov	DWORD PTR -44[rbp], eax         # int index = eax (предыдущую и эту строчки можно оптимизировать)
	jmp	.L6                             # переход к дальнейшему for
.L9:
	cmp	DWORD PTR -44[rbp], 1
	jne	.L7
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -1968[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -16[rbp], rax         # input_file = argv[index]
	jmp	.L8
.L7:
	cmp	DWORD PTR -44[rbp], 2           # index == 2 (-44[rbp] = index можно оптимизировать)
	jne	.L8
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]                 # rdx = rax + 8 и оптимизация кода
	mov	rax, QWORD PTR -1968[rbp]       # rax = argv
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -24[rbp], rax         # output_file = argv[index]
.L8:
	add	DWORD PTR -44[rbp], 1           # ++index
.L6:
	mov	eax, DWORD PTR -44[rbp]     # eax = index
	cmp	eax, DWORD PTR -1956[rbp]   # eax < argc
	jl	.L9                         # переход к телу for
	mov	rax, QWORD PTR -16[rbp]     # rax = input_file
	lea	rsi, .LC3[rip]              # rsi = "r"
	mov	rdi, rax                    # rdi = rax
	call	fopen@PLT
	mov	QWORD PTR -32[rbp], rax     # input = rax
	cmp	QWORD PTR -32[rbp], 0       # input == NULL
	jne	.L10
	lea	rdi, .LC4[rip]
	call	puts@PLT
	mov	eax, 0
	jmp	.L25
.L10:
	mov	BYTE PTR -1[rbp], 1         # from_file = true (1)
	jmp	.L12
.L5:
	cmp	DWORD PTR -1956[rbp], 1     # argc == 1
	je	.L12                        # переход к дальнейшему телу main, если (argc != 1) == 0
	lea	rdi, .LC5[rip]              # "Указано недопустимое..."
	call	puts@PLT                # видимо printf
	mov	eax, 0
	jmp	.L25                        # переход к выходу из функции
.L12:
	mov	BYTE PTR -105[rbp], 0       # char s = 0
	movzx	eax, BYTE PTR -1[rbp]   # eax = from_file
	xor	eax, 1                      # !from_file
	test	al, al                  # логическое и (для xor, видимо)
	je	.L13
	lea	rdi, .LC6[rip]
	mov	eax, 0                      # указание на то, что все значения на стеке хранятся, передаваемые в printf
	call	printf@PLT
	lea	rax, -105[rbp]              # rax = s
	mov	rsi, rax                    # rsi = rax (можно оптимизировать)
	lea	rdi, .LC7[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L14
.L13:
	lea	rdx, -105[rbp]§             # rdx = s
	mov	rax, QWORD PTR -32[rbp]     # rax = input
	lea	rsi, .LC7[rip]
	mov	rdi, rax                    # rdi = rax (можно оптимизировать)
	mov	eax, 0
	call	__isoc99_fscanf@PLT     # fscanf(input, "%c", &s)
.L14:
	movzx	eax, BYTE PTR -105[rbp] # eax = s
	cmp	al, 73                      # eax == 'I'
	jne	.L15
	movzx	eax, BYTE PTR -1[rbp]   # eax = from_file
	xor	eax, 1
	test	al, al
	je	.L16
	lea	rdi, .LC8[rip]
	mov	eax, 0
	call	printf@PLT
	lea	rax, -104[rbp]              # rax = eps
	mov	rsi, rax                    # rsi = rax (можно оптимизировать)
	lea	rdi, .LC9[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L17
# else внутри if (s == 'I)
.L16:
	lea	rdx, -104[rbp]              # rdx = eps
	mov	rax, QWORD PTR -32[rbp]     # rax = input
	lea	rsi, .LC9[rip]
	mov	rdi, rax                    # можно оптимизировать
	mov	eax, 0
	call	__isoc99_fscanf@PLT     # fscanf(input, "%lf", &eps)
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax                    # rdi = rax (можно оптимизировать)
	call	fclose@PLT              # fclose(input)
	jmp	.L17
.L15:
	movzx	eax, BYTE PTR -105[rbp] # eax = s
	cmp	al, 71                      # s == 'G'
	jne	.L18
	lea	rax, -104[rbp]
	mov	rdi, rax                    # можно оптимизировать
	call	GetRandomError@PLT
	mov	rax, QWORD PTR -104[rbp]    # rax = eps
	movq	xmm0, rax               # xmm0 = rax (можно оптимизировать)
	lea	rdi, .LC10[rip]             # rdi = "Сгенерированная точночть...
	mov	eax, 1                      # eax = 1 (не знаю зачем)
	call	printf@PLT
	jmp	.L17
.L18:
	lea	rdi, .LC11[rip]             # rdi = "Введите точность...
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	jmp	.L25
# if (IsErrorCorrect)
.L17:
	mov	rax, QWORD PTR -104[rbp]
	movq	xmm0, rax               # можно оптимизировать
	call	IsErrorCorrect@PLT
	test	al, al
	je	.L19
	movsd	xmm1, QWORD PTR -104[rbp]   # xmm1 = eps
	movsd	xmm0, QWORD PTR -96[rbp]    # xmm0 = b
	mov	rax, QWORD PTR -88[rbp]         # rax = a
	movapd	xmm2, xmm1
	movapd	xmm1, xmm0
	movq	xmm0, rax                   # можно оптимизировать
	mov	rax, QWORD PTR F@GOTPCREL[rip]  # вызов функции F
	mov	rdi, rax                        # можно оптимизировать
	call	FindRoot@PLT
	movq	rax, xmm0
	mov	QWORD PTR -64[rbp], rax         # можно оптимизировать
	movzx	eax, BYTE PTR -1[rbp]
	xor	eax, 1
	test	al, al
	je	.L20
	mov	rax, QWORD PTR -64[rbp]
	movq	xmm0, rax                   # можно оптимизировать
	lea	rdi, .LC12[rip]
	mov	eax, 1
	call	printf@PLT
	jmp	.L21
# else внутри if (IsErrorCorrect)
.L20:
	movabs	rax, -5561791807575029238
	movabs	rdx, 4404652422946930384
	mov	QWORD PTR -1120[rbp], rax
	mov	QWORD PTR -1112[rbp], rdx
	mov	QWORD PTR -1104[rbp], 32
	mov	QWORD PTR -1096[rbp], 0
	lea	rdx, -1088[rbp]
	mov	eax, 0
	mov	ecx, 33
	mov	rdi, rdx
	rep stosq
	mov	rdx, rdi
	mov	DWORD PTR [rdx], eax
	add	rdx, 4
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -1424[rbp]
	movq	xmm0, rdx
	lea	rsi, .LC9[rip]
	mov	rdi, rax
	mov	eax, 1
	call	sprintf@PLT
	lea	rdx, -1424[rbp]
	lea	rax, -1120[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcat@PLT
	lea	rax, -1120[rbp]
	mov	rcx, -1
	mov	rdx, rax
	mov	eax, 0
	mov	rdi, rdx
	repnz scasb
	mov	rax, rcx
	not	rax
	lea	rdx, -1[rax]
	lea	rax, -1120[rbp]
	add	rax, rdx
	mov	WORD PTR [rax], 10
	mov	rax, QWORD PTR -24[rbp]
	lea	rsi, .LC13[rip]
	mov	rdi, rax
	call	fopen@PLT
	mov	QWORD PTR -40[rbp], rax
	cmp	QWORD PTR -40[rbp], 0
	jne	.L22
	lea	rdi, .LC4[rip]
	call	puts@PLT
	mov	eax, 0
	jmp	.L25
.L22:
	mov	rdx, QWORD PTR -40[rbp]     # rdx = output
	lea	rax, -1120[rbp]             # rax = out
	mov	rsi, rdx                    # можно оптимизирвать
	mov	rdi, rax                    # можно оптимизирвать
	call	fputs@PLT
	jmp	.L21
.L19:
	lea	rdi, .LC14[rip]                 # rdi = "Точность поиска корня должна быть...
	call	puts@PLT
.L21:
	call	clock@PLT                   # rax = clock()
	mov	QWORD PTR -72[rbp], rax         # clock_t end = rax
	mov	eax, 0
	call	GetTimeOfFindRoot@PLT       # xmm0 = GetTimeOfFindRoot()
	movsd	QWORD PTR -1976[rbp], xmm0  # time_without_input_output = 0
	mov	eax, 0
	call	GetTimeOfGetCorrectInterval@PLT
	movapd	xmm3, xmm0                  # можно оптимизировать
	addsd	xmm3, QWORD PTR -1976[rbp]
	movsd	QWORD PTR -1976[rbp], xmm3  # time_without_input_output = GetTimeOfFindRoot() + GetTimeOfGetCorrectInterval()
	mov	eax, 0
	call	GetTimeOfGetRandomError@PLT
	addsd	xmm0, QWORD PTR -1976[rbp]
	movsd	QWORD PTR -1976[rbp], xmm0
	mov	eax, 0
	call	GetTimeOfIsErrorCorrect@PLT
	addsd	xmm0, QWORD PTR -1976[rbp]
	movsd	QWORD PTR -80[rbp], xmm0    # time_without_input_output = GetTimeOfFindRoot() + GetTimeOfGetCorrectInterval() + GetTimeOfGetRandomError() + GetTimeOfIsErrorCorrect()
	movzx	eax, BYTE PTR -1[rbp]
	xor	eax, 1
	test	al, al
	je	.L23
	mov	rax, QWORD PTR -72[rbp]
	sub	rax, QWORD PTR -56[rbp]
	cvtsi2sd	xmm0, rax
	movsd	xmm1, QWORD PTR .LC15[rip]
	divsd	xmm0, xmm1
	mov	rax, QWORD PTR -80[rbp]
	movapd	xmm1, xmm0
	movq	xmm0, rax
	lea	rdi, .LC16[rip]
	mov	eax, 2
	call	printf@PLT
	jmp	.L24
.L23:
	movabs	rax, -4841169692304239920
	movabs	rdx, -3419408926131580975
	mov	QWORD PTR -1120[rbp], rax
	mov	QWORD PTR -1112[rbp], rdx
	movabs	rax, -3405336238142598977
	movabs	rdx, 2346324522589606069
	mov	QWORD PTR -1104[rbp], rax
	mov	QWORD PTR -1096[rbp], rdx
	movabs	rax, -5489678143040929840
	movabs	rdx, -4841161994917609263
	mov	QWORD PTR -1088[rbp], rax
	mov	QWORD PTR -1080[rbp], rdx
	movabs	rax, -3407588080916329519
	movabs	rdx, 3419487142830219447
	mov	QWORD PTR -1072[rbp], rax
	mov	QWORD PTR -1064[rbp], rdx
	movabs	rax, 4404648483315021167
	mov	edx, 0
	mov	QWORD PTR -1056[rbp], rax
	mov	QWORD PTR -1048[rbp], rdx
	lea	rdx, -1040[rbp]
	mov	eax, 0
	mov	ecx, 115
	mov	rdi, rdx
	rep stosq
	movabs	r8, -3334123094808604384
	movabs	r9, -8371865475243716477
	mov	QWORD PTR -1728[rbp], r8
	mov	QWORD PTR -1720[rbp], r9
	movabs	rax, -9092450228906218455
	movabs	rdx, 8011750309861681440
	mov	QWORD PTR -1712[rbp], rax
	mov	QWORD PTR -1704[rbp], rdx
	movabs	rax, 2323048667351643253
	mov	edx, 0
	mov	QWORD PTR -1696[rbp], rax
	mov	QWORD PTR -1688[rbp], rdx
	lea	rdx, -1680[rbp]
	mov	eax, 0
	mov	ecx, 31
	mov	rdi, rdx
	rep stosq
	mov	rdx, rdi
	mov	DWORD PTR [rdx], eax
	add	rdx, 4
	mov	QWORD PTR -1424[rbp], r8
	mov	QWORD PTR -1416[rbp], r9
	mov	QWORD PTR -1408[rbp], 2601
	mov	QWORD PTR -1400[rbp], 0
	lea	rdx, -1392[rbp]
	mov	eax, 0
	mov	ecx, 33
	mov	rdi, rdx
	rep stosq
	mov	rdx, rdi
	mov	DWORD PTR [rdx], eax
	add	rdx, 4
	mov	rdx, QWORD PTR -80[rbp]
	lea	rax, -1952[rbp]
	movq	xmm0, rdx
	lea	rsi, .LC9[rip]
	mov	rdi, rax
	mov	eax, 1
	call	sprintf@PLT
	mov	rax, QWORD PTR -72[rbp]
	sub	rax, QWORD PTR -56[rbp]
	cvtsi2sd	xmm0, rax
	movsd	xmm1, QWORD PTR .LC15[rip]
	divsd	xmm0, xmm1
	lea	rax, -1840[rbp]
	lea	rsi, .LC9[rip]
	mov	rdi, rax
	mov	eax, 1
	call	sprintf@PLT
	lea	rdx, -1952[rbp]
	lea	rax, -1120[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcat@PLT
	lea	rdx, -1728[rbp]
	lea	rax, -1120[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcat@PLT
	lea	rdx, -1840[rbp]
	lea	rax, -1120[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcat@PLT
	lea	rdx, -1424[rbp]
	lea	rax, -1120[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcat@PLT
	mov	rdx, QWORD PTR -40[rbp]
	lea	rax, -1120[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	fputs@PLT
# обнуление для printf
.L24:
	mov	eax, 0
.L25:
	leave                       # выход с main
	ret                         # возврат метки
	.section	.rodata
	.align 8
# для числа 2
.LC0:
	.long	0                   # хранение дробной или целой части double
	.long	1073741824          # хранение дробной или целой части double
	.align 8                    # под double выделяется 8 байт
# для числа 3
.LC1:
	.long	0                   # хранение дробной или целой части double
	.long	1074266112          # хранение дробной или целой части double (судя по всему для целой потому, что в .LC0 другое число во 2 строчке)
	.align 8
.LC15:
	.long	0
	.long	1093567616
