;Lab10 Home Task1.4
;Sum of all odd  numbers in array . And Count Them also .
;23-NTU-CS-1167 (Kashmir Jamshaid)

include irvine32.inc

.data
array sword 11, 12, 13, 14, 15 , 17 , 22 , 24 ,26
msg1 byte "Sum of Odd  numbers is ", 0
CountMsg byte "Total number of odd  numbers is ", 0

.code
main proc
    mov esi, offset array
    mov ecx, lengthof array
    mov eax, 0  ; For suming odd numbers 
    mov ebx, 0 ;  for conuting 
Next:
    mov dx, word ptr [esi]   ;  store esi in register 
    test dx, 0001h    ; test is it odd 
    jz skip          ; skip if zero flag is set 

    add eax, edx    ; add odd numbers 
    inc ebx         ; add 1 after every odd number found 
skip:
    add esi, type array    
    loop Next
    mov edx, offset msg1
    call writestring
    call writedec
    call crlf
    mov edx, offset CountMsg   ;display string 
    call writestring
    mov eax, ebx
    call writeint      ; show count 
    exit
main endp
end main
