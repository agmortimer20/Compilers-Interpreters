%include "/usr/local/share/csc314/asm_io.inc"


segment .data


segment .bss


segment .text
    global  asm_main

asm_main:
    push    ebp
    mov     ebp, esp
    ; ********** CODE STARTS HERE **********
    call read_int
    mov ebx, eax    ; A = ebx
    call read_int
    mov ecx, eax    ; B = ecx
    call read_int
    mov esi, eax    ; C = edx

    ; Multiply Inner Parenthesis
    mov eax, ecx    ; eax = B
    mov ecx, 16     ; ecx = 16
    mul ecx         ; eax * ecx
    
    ; Divide
    mov ecx , esi   ; ecx = C
    mov edx, 0      ; Clear edx
    div ecx

    ; Multiply Left Side
    mov edx, ebx    ; Copy A to edx
    add edx, 95     ; A += 95
    mul edx         ; X += (A+95)

    sub eax, ebx
    add eax, 20

    call print_int
    call print_nl

    ; *********** CODE ENDS HERE ***********
    mov     eax, 0
    mov     esp, ebp
    pop     ebp
    ret