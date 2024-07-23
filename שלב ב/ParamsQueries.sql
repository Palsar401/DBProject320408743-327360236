include 'win32a.inc'

format PE console
entry start

section '.data' data readable writeable

msg1 db "hi", 13,10,0
msg2 db "bye" , 13,10,0

section '.text' code readable executable
; ======================================
start:
mov esi, msg1
call print_str
mov esi, msg2
call print_str
push 0
call	[ExitProcess]


include 'training.inc'
