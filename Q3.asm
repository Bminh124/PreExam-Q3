INCLUDE Irvine32.inc

.data
     msg byte "Enter values:",0
     msg1 byte "b=",0
     msg2 byte "c=",0
     msg3 byte "d=",0
     msg4 byte "a=",0
    
     var1 DWORD ?
     var2 DWORD ?
     var3 DWORD ?
     
.code
main proc
     mov edx, offset msg
     call writestring
     call readint
     mov var1,eax
     call readint
     call crlf
     mov var2,eax
     call readint
     call crlf
     mov var3eax
     call crlf
     call readint
     

     mov edx, offset msg1
     call writestring
     mov eax,var1
     call writeint
     call crlf

     mov edx, offset msg2
     call writestring
     mov eax,var2
     call writeint
     call crlf

     mov edx, offset msg3
     call writestring
     mov eax,var3
     call writeint

     call readint
     

     invoke ExitProcess,0
main endp
end main