" Vim syntax file
" Language: Hack Virtual Machine
" Maintainer: Severyn Kozak
" Latest Revision: 02 December 2014

if version < 600
	syntax clear
endif

setl iskeyword+=.,:
setl iskeyword+=-

syn keyword hackVmMathLogicOp add sub neg eq gt lt or not
syn keyword hackVmMemoryOp push pop
syn keyword hackVmMemorySegments argument local static constant this that
	\ pointer temp
syn keyword hackVmProgramFlowOp label goto if-goto
syn keyword hackVmFunctionCallOp function call return

syn match hackVmComment "\/\/.*$"
syn match hackVmNumber "\v(\w)@<!\d+"

hi link hackVmComment Comment
hi link hackVmMathLogicOp Operator
hi link hackVmMemoryOp Statement
hi link hackVmMemorySegments Identifier
hi link hackVmProgramFlowOp Conditional
hi link hackVmFunctionCallOp Function
hi link hackVmNumber Number
