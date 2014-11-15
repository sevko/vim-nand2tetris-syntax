setl iskeyword+=.,$,:

syn keyword hackDestination A M D AM MD AD AMD null
syn keyword hackJump JGT JEQ JGE JLT JNE JLE JMP

syn match hackComment "\/\/.*$"
syn match hackLabel "(\k\+)"
syn match hackMathOp "[+-]"
syn match hackBitwiseOp "[&|]"
syn match hackAInstruction "@\k\+"
syn match hackCInstruction "[=;]"
syn match hackConstant "-1\|0\|1"

hi link hackDestination Identifier
hi link hackJump Function
hi link hackConstant Constant

hi link hackComment Comment
hi link hackLabel Label
hi link hackMathOp Operator
hi link hackBitwiseOp Operator
hi link hackAInstruction PreProc
hi link hackCInstruction Operator
