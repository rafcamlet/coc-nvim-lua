function! coc#source#nvim_lua#init() abort
  return {
        \ 'shortcut': 'Nlua',
        \ 'filetypes': ['lua', 'lua.luapad'],
        \ 'priority': 2,
        \ 'triggerCharacters': ['.', ':']
        \}
endfunction

function! coc#source#nvim_lua#complete(opt, cb)
  return a:cb(luaeval("vim._expand_pat(_A)", '^' .. a:opt['line']))
endfunction
