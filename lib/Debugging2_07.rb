class LetterCounter
  def initialize(text)
    @text = text
  end

  def calculate_most_common()
    counter = Hash.new(0) #{'D'=> 1} 
   
    most_common = nil # Actual letter CODEOK

    most_common_count = 0 # num of times repeated 

    @text.chars.each do |char| #["D", "i", "g", "i", "t", "a", "l", " ", "P", "u", "n", "k"] CODEOK
        next unless is_letter?(char) 
        counter[char] = (counter[char] || 0) + 1 #counter[char] = 2 
      if counter[char] > most_common_count + 1 #counter[char] = 2 && most_common_count = 2
        most_common = char 
        most_common_count += counter[char] 
      end

    end
    return [most_common_count, most_common] #most_common_count = 3, most_common = "D" CODEOK
  end

  private

  def is_letter?(letter)
    return letter =~ /[a-z]/i # checks whether the arg(letter) is a letter from a-zA-Z CODEOK
  end
end

counter = LetterCounter.new("Digital Punk")
p counter.calculate_most_common
# Intended output:
# [2, "i"]