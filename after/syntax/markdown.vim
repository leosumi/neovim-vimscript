" Vim syntax file
" Language:    markdown
" Maintainer:  Léo Sumi

if !exists('main_syntax')
  let main_syntax = b:current_syntax
endif
unlet! b:current_syntax

" YAML
syntax include @YAML syntax/yaml.vim
syntax region markdownYAMLHeader start="\%^---$" end="^\.\.\.$" keepend contains=@YAML containedin=TOP
unlet! b:current_syntax

" Comments
syntax keyword markdownTodo TODO contained
syntax keyword markdownNote NOTE contained
syntax match markdownComment /^%.*/ contains=markdownTodo,markdownNote

" TeX
syntax include @TEX syntax/tex.vim
syntax region markdownTex start="\\\@<!\$" end="\$" skip="\\\$" contains=@TEX keepend
syntax region markdownTex start="\\\@<!\$\$" end="\$\$" skip="\\\$" contains=@TEX keepend
unlet! b:current_syntax

" Highlight
highlight link markdownTodo Todo
highlight link markdownNote Todo
highlight link markdownComment Comment

let b:current_syntax = main_syntax
unlet main_syntax

" vim:set sw=2:
