function! PopupContexts()
    let cpos = getcurpos()
    let row = cpos[1]
    let col = cpos[2]
    let line_offset = "cursor-".(row-1)
    let column_offset = "cursor-".(col-1)

    let line_p = line(".")
    let min_indent = indent(line_p)
    let contexts = []

    while line_p != 0 && min_indent != 0
        let line_p = (line_p-1)->prevnonblank()
        if indent(line_p) < min_indent
            let min_indent = indent(line_p)
            let contexts = add(contexts, getline(line_p))
        endif
    endwhile
    let contexts = reverse(contexts) " from old to new
   call popup_create(contexts, { "line":line_offset,"col":column_offset,"moved":"any"})
endfunction
:command! Pctx :call PopupContexts()
