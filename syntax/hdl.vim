" Vim syntax file
" Language: HDL
" Maintainer: Severyn Kozak
" Latest Revision: 11 November 2014

if version < 600
	syntax clear
endif

" The `.hdl` extension is reserved for the `vhdl` filetype, and, by the time
" this plugin is sourced, Vim has already loaded the `vhdl` ftplugin files,
" which contain some undesired settings. The fullproof way to ignore them is to
" prevent Vim from ever setting the `vhdl` filetype, which can only be done by
" having the user specify the following:
"
"   au BufNewFile,BufRead *.hdl setfiletype hdl
"
" in their vimrc, which is messy. Best to let the plugin do the work just by
" explicitly overriding the settings that we don't want, like the following.
setl indentexpr=
setl formatoptions+=or
let b:current_syntax = "hdl"
let did_load_filetypes = 1

syn match _hdl_comment_inline "\/\/.*"
syn match _hdl_delimiter "[,;:.]"
syn match _hdl_assignment "="
syn match _hdl_number "\v(\w)@<!\d+"
syn match _hdl_surrounding "[[\](){}]"
syn match _hdl_pin_name "\a[a-zA-Z0-9]*\ze=" contains=ALL
syn region _hdl_comment_block start="/\*" end="*/"
syn keyword _hdl_builtin_chip Add16 ALU And And16 ARegister Bit DFF DMux
	\ DMux4Way DMux8Way DRegister Mux4Way16 Mux8Way16 FullAdder HalfAdder Inc16
	\ Keyboard Mux Mux16 Or Or16 Or8Way PC RAM RAM16K RAM4K RAM512 RAM64 ROM32K
	\ Screen Xor RAM8 Register RegisterWithGUI Nand Not Not16
syn keyword _hdl_section CHIP PARTS IN OUT

syn keyword _hdl_constant true false

hi link _hdl_comment_block Comment
hi link _hdl_comment_inline Comment
hi link _hdl_builtin_chip Constant
hi link _hdl_section Label
hi link _hdl_delimiter Comment
hi link _hdl_surrounding Delimiter
hi link _hdl_number Number
hi link _hdl_constant Constant
hi link _hdl_assignment Operator
hi link _hdl_pin_name Identifier
