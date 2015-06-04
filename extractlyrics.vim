function ExtractLyrics()
    if search("Translation") > 0
        :norm /<b>Translation<\/b>
        :norm V/<\/div
        :norm "ay
        :%d
        :norm "ap
        :w
        :echo "found translation"
    else
        :norm /table>/n<p>
        :norm j
        :norm V/<div
        :norm k
        :norm "ay
        :%d
        :norm "ap
        :w
        :echo "did not find translation"
    endif
endfunction
