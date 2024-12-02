;Lab10 HomeTask1.2
;Sum of all positive numbers in array . And Count Them also .
;23-NTU-CS-1167 (Kashmir Jamshaid )
include irvine32.inc

.data
array sword -11, 12, 13, 14, -15 
msg1 byte "Sum of positive  numbers is ", 0
CountMsg byte "Total number of positive numbers is ", 0

.code
main proc
    mov esi, offset array
    mov ecx, lengthof array
    mov eax, 0         ;For suming positive numbers 
    mov ebx,           ;For Countig 

Next:
    mov dx, word ptr [esi]         ; store esi in register 
    test dx, 1000000000000000b     ; test for positive numbers
    jnz skip                       ; skip if zero  not flag is set

    add eax, edx                    ; add all positive numbers
    inc ebx                         ; add 1 after every positive  number found

skip:
    add esi, type array 
    loop Next

    mov edx, offset msg1
    call writestring                ; display string 
    call writedec
    call crlf

    mov edx, offset CountMsg
    call writestring           ;  show count 
    mov eax, ebx
    call writeint

    exit

main endp
end main
