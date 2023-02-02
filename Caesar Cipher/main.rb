UPPERCASE_LETTERS = ("A".."Z").to_a 
LOWERCASE_LETTERS = ("a".."z").to_a


def caesar_cipher(s, key)
    res =""
    s.each_char do 
        |ch| 
        if UPPERCASE_LETTERS.include?ch
            ch = UPPERCASE_LETTERS[(UPPERCASE_LETTERS.index(ch)+key)%26 ]
        elsif LOWERCASE_LETTERS.include?ch
            ch = LOWERCASE_LETTERS[(LOWERCASE_LETTERS.index(ch)+key)%26 ]
        end
        res +=(ch);
    end
    return res;
end


puts caesar_cipher("What a string!", 5)