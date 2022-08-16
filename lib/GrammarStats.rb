class GrammarStats
    def initialize
        @goodText = 0
        @badText = 0
    end

    def check(text) 

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
        totalText = @badText + @goodText
        return ((@goodText * 100) / totalText).ceil
    end
end