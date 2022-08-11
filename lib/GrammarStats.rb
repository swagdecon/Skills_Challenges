class GrammarStats
    def initialize
        @goodText = 0
        @badText = 0
    end

    def check(text) # text is a string
#       # Returns true or false depending on whether the text begins with a capital
#       # letter and ends with a sentence-ending punctuation mark.
    fail 'Text cannot be empty' unless text.length > 0
        letter = text.split('')
        validator = text.include?(" ") && letter[0] != letter[0].downcase && letter[-1] =~ /[!.?]/ 
    while validator
        @goodText +=1
        return true
    end
    until validator
        @badText +=1
        return false
    end
end

    def percentage_good
#       # Returns as an integer the percentage of texts checked so far that passed the check defined in the `check` method. The number 55 represents 55%.
        totalText = @badText + @goodText
        return ((@goodText * 100) / totalText).ceil
    end
end