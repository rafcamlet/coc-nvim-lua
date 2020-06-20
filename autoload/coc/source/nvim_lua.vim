function! coc#source#nvim_lua#init() abort
  return {
        \ 'shortcut': 'Nlua',
        \ 'filetypes': ['lua', 'lua.luapad'],
        \ 'priority': 2,
        \}
endfunction

function! coc#source#nvim_lua#complete(opt, cb)
  return a:cb(luaeval("require'coc_nvim_lua'.complete(_A)", a:opt))
endfunction
