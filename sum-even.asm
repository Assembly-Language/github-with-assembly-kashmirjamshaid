; Lab10 Home Task1.3
;Sum of all even  numbers in array . And Count Them also .
;23-NTU-CS-1167 (Kashmir Jamshaid)



include irvine32.inc

.data
array sword 11, 12, 13, 14, 15 , 17 , 22 , 24 ,26
msg1 byte "Sum of even  numbers is ", 0
CountMsg byte "Total number of even numbers is ", 0

.code
main proc
    mov esi, offset array
    mov ecx, lengthof array
    mov eax, 0   ; For suming odd numbers 
    mov ebx, 0   ;  for conuting 
Next:
    mov dx, word ptr [esi]          ;  store esi in registe
    test dx, 0001h       ; test is it odd 
    jnz skip              ; skip if zero flag is not set 


    add eax, edx           ; add  all even numbers
    inc ebx                ; add 1 after every even number found 
skip:
    add esi, type array
    loop Next
    mov edx, offset msg1
    call writestring    ;;display string 
    call writedec
    call crlf
    mov edx, offset CountMsg
    call writestring
    mov eax, ebx
    call writeint           ; show count 
    exit
main endp
end main
