#!/usr/bin/python3

from pwn import *

def mov32(dst, src):
    return shellcraft.i386.mov(dst, src)
def sys32():
    return shellcraft.i386.syscall()


pl =  mov32('eax', 4)
pl += mov32('ebx', 1)
pl += mov32('ecx','esp')
pl += mov32('edx',0x100)
pl += sys32()


print(pl)

