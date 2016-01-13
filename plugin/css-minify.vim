function! MinifyCSS()
    let f = expand("%:r")
    silent exe ":! minify --output " . f . ".min.css % > /dev/null 2> /dev/null"
endfunction
au BufWritePost *.css call MinifyCSS()
