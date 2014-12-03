" Vim syntax file
" Language: Hack Assembly
" Maintainer: Severyn Kozak
" Latest Revision: 15 November 2014

if version < 600
	syntax clear
endif

setl iskeyword+=.,$,:

syn keyword hackAsmDestination A M D AM MD AD AMD null
syn keyword hackAsmJump JGT JEQ JGE JLT JNE JLE JMP

syn match hackAsmComment "\/\/.*$"
syn match hackAsmLabel "(\k\+)"
syn match hackAsmMathOp "[+-]"
syn match hackAsmBitwiseOp "[&|]"
syn match hackAsmAInstruction "@\k\+"
syn match hackAsmCInstruction "[=;]"
syn match hackAsmConstant "-1\|0\|1"

hi link hackAsmDestination Identifier
hi link hackAsmJump Function
hi link hackAsmConstant Constant

hi link hackAsmComment Comment
hi link hackAsmLabel Label
hi link hackAsmMathOp Operator
hi link hackAsmBitwiseOp Operator
hi link hackAsmAInstruction PreProc
hi link hackAsmCInstruction Operator
