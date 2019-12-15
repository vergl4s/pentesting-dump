; Filename: MovingData.nasm
; Author:  Vivek Ramachandran
; Website:  http://securitytube.net
; Training: http://securitytube-training.com 
;
;
; Purpose: Stack instructions in 64-bit CPU

global _start			

section .text
_start:

	mov rax, 0x1122334455667788
	push rax

	push sample 

	push qword [sample]

	pop r15
	pop r14
	pop rbx
	
	; exit the program gracefully  

	mov rax, 0x3c
	mov rdi, 0		
	syscall


section .data

sample:	db 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x11, 0x22
