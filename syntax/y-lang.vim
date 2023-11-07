syn keyword whyKeyword mut import 
syn keyword whyKeyword declare nextgroup=whyIdentifier skipwhite skipempty
syn keyword whyKeyword let 

syn match whyIdentifier "\%(r#\)\=\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*" display contained

syn keyword whyKeyword fn nextgroup=whyFuncName skipwhite skipempty
syn match whyFuncName "\%(r#\)\=\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*" display contained

syn keyword whyKeyword return

syn keyword whyConditional if else 

syn keyword whyRepeat while

syn keyword whyStorage move mut ref static const

syn match whyOperator display "\%(+\|-\|/\|*\|=\|:=\|\^\|&\||\|!\|>\|<\|%\|\\\)=\?"

syn match whyLineComment "//.*$"
syn region whyBlockComment start=+/\*+ end=+\*/+

syn match whyDecimalNumber '\d\+'
syn match whyHexNumber '0x\d\+'

hi def link whyDecimalNumber whyNumber
hi def link whyHexNumber whyNumber

syn region whyStrings start=+"+ end=+"+ end=+$+ 

syn match   whyCharacter   /b'\([^\\]\|\\\(.\|x\x\{2}\)\)'/ 
syn match   whyCharacter   /'\([^\\]\|\\\(.\|x\x\{2}\|u{\%(\x_*\)\{1,6}}\)\)'/ 

syn keyword whyBoolean true false

syn keyword	whyType any int char str bool void unknown i8 u8 i16 u16 i32 u32 i64 u64 f32 f64

syn match whyFuncCall "\w\(\w\)*("he=e-1,me=e-1

syn match whyImportModifer "@\w\(\w\)*"

syn region    whyAttribute   start="#\[" end="\]" 

hi def link whyKeyword          Keyword 

hi def link whyConditional      Conditional
hi def link whyRepeat           Conditional

hi def link whyStorage          StorageClass

hi def link whyFuncName         Function
hi def link whyFuncCall         Function
hi def link whyImportModifer    Function

hi def link whyOperator         Operator

hi def link whyIdentifier       Identifier

hi def link whyNumber           Number

hi def link whyStrings          String

hi def link whyCharacter        Character

hi def link whyType             Type

hi def link whyBoolean          Boolean

hi def link whyLineComment      Comment
hi def link whyBlockComment     Comment

hi def link whyAttribute        PreProc
