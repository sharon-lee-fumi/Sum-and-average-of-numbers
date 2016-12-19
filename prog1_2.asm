ORG 100h
INCLUDE 'emu8086.inc'

PRINTN "Enter the 1st 8-bit number:" 
CALL scan_num

MOV AL,CL

PRINTN
PRINTN "Enter the 2nd 8-bit number:" 
CALL scan_num 
MOV BL,CL
CALL sum

PRINTN
PRINTN "Enter the 3nd 8-bit number:" 
CALL scan_num 
MOV BL,CL

CALL sum
PRINTN
PRINT "The sum is: "
CALL print_num

CALL avg
PRINTN
PRINT "The average is: "
CALL print_num  

sum PROC
    ADD AL,BL   
    RET
sum ENDP 

avg PROC 
    MOV BL,03h
    DIV BL  
    RET
avg ENDP

RET

define_print_string
define_scan_num 
define_print_num 
define_print_num_uns
end