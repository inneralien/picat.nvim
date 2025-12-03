" Vim syntax file
" Language: Picat
" Maintainer: Generated for Picat language
" Latest Revision: 2025

if exists("b:current_syntax")
  finish
endif

" Comments
syn match picatComment "%.*$"
syn region picatBlockComment start="/\*" end="\*/"

" Keywords
syn keyword picatKeyword do else elseif end foreach if in index max min module
syn keyword picatKeyword not notin nt private protected public table then while

" Variables (uppercase)
syn match picatVariable "\<[A-Z_][a-zA-Z0-9_]*\>"

" Numbers
syn match picatNumber "\<\d\+\>"
syn match picatFloat "\<\d\+\.\d\+\>"

" Strings
syn region picatString start=+"+ skip=+\\\\\|\\\"+ end=+"+

" Atoms (quoted)
syn region picatAtom start=+'+ skip=+\\\\\|\\\'+ end=+'+

" Atoms (unquoted - lowercase identifiers not followed by parenthesis)
syn match picatAtom "\<[a-z][a-zA-Z0-9_]*\>\ze\s*[^(]"

" Operators
syn match picatOperator "=>"
syn match picatOperator "?=>"
syn match picatOperator ":="
syn match picatOperator "\.\."
syn match picatOperator "::"
syn match picatOperator "#[=<>]"
syn match picatOperator "#\\="
syn match picatOperator "#/\\"
syn match picatOperator "#\\/"
syn match picatOperator "[+\-*/]"
syn match picatOperator "[<>=!]"

" Built-in predicates (common ones)
syn keyword picatBuiltin abs append atom bagof between findall foreach
syn keyword picatBuiltin head tail length member print println read sort
syn keyword picatBuiltin write writeln integer float var nonvar ground

" Predicates and function definitions
syn match picatPredicate "\<[a-z][a-zA-Z0-9_]*\>\ze\s*("

" Facts (predicates ending with period)
syn match picatFact "\<[a-z][a-zA-Z0-9_]*\>\ze\s*\."

" Empty list
syn keyword picatAtom []

" Link to highlight groups
hi def link picatComment Comment
hi def link picatBlockComment Comment
hi def link picatKeyword Keyword
hi def link picatVariable Identifier
hi def link picatNumber Number
hi def link picatFloat Float
hi def link picatString String
hi def link picatAtom Constant
hi def link picatOperator Operator
hi def link picatBuiltin Type
hi def link picatPredicate Function
hi def link picatFact PreProc

let b:current_syntax = "picat"
