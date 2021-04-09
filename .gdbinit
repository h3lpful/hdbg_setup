set disassembly-flavor intel
set disassemble-next-line on
show disassemble-next-line

source ~/pwndbg/gdbinit.py

set context-clear-screen on
set follow-fork-mode parent

source ~/splitmind/gdbinit.py



python
import splitmind
(splitmind.Mind()
    .right( display="stack", size="65%")
    .right(display="disasm")
    .above(of="main", display="backtrace", size="25%")
    .below(of="stack",display="regs")
    .show("legend", on="disasm")
).build()
end

set context-code-lines 30
set context-source-code-lines 30
set context-sections "regs args code disasm stack backtrace"
