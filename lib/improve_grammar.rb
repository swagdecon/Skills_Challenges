def improve_grammar(text)
    letter = text.split('')
    text.include?(" ") && letter[0] != letter[0].downcase && letter[-1] =~ /[!.?]/ ? true : false
end