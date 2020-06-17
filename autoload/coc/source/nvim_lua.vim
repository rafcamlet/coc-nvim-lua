function! coc#source#nvim_lua#init() abort
  return {
        \ 'shortcut': 'Nlua',
        \ 'filetypes': ['lua'],
        \}
endfunction

function! coc#source#nvim_lua#complete(opt, cb)
  return a:cb(luaeval("require'coc_nvim_lua'.complete(_A)", a:opt))
endfunction
