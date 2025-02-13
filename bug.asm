mov eax, [ebx+ecx*4] ; potential buffer overflow if ecx is too large

mov DWORD PTR [eax], 10 ; write access violation if eax points to an invalid memory location

jmp eax ; indirect jump to an unpredictable location

movzx edx, byte ptr [esi+edi*2] ; potential buffer overflow if edi is too large

add eax, ebx ; integer overflow if the sum exceeds the maximum value of eax

loop label ; loop counter overflow if ecx is initially zero or negative