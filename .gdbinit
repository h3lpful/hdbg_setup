source /home/helpful/hdbg_setup/pwndbg/gdbinit.py

set context-clear-screen on
set follow-fork-mode parent

source /home/helpful/hdbg_setup/splitmind/gdbinit.py



python
import splitmind
(splitmind.Mind()
    .above(display="backtrace")
    .right(display="stack", size="80%")
    .right(display="regs")
    .right(of="main", display="disasm")
    .show("legend", on="disasm")
).build()
end

set context-code-lines 30
set context-source-code-lines 30
set context-sections "regs args code disasm stack backtrace"

