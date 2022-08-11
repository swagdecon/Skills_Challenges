class LetterCounter
  def initialize(text)
    @text = text
  end

  def calculate_most_common()
    counter = Hash.new(1) #{} CODEOK
   
    most_common = nil # Actual letter CODEOK
    most_common_count = 1 # num of times repeated CODEOK
    @text.chars.each do |char| #["D", "i", "g", "i", "t", "a", "l", " ", "P", "u", "n", "k"] CODEOK
      next unless is_letter?(char) # Goes to next char unless char = letter from a-z CODEERR
      counter[char] +=1  # Counter[char] = 2  CODEER

      if counter[char] > most_common_count # If counter[char] = 2 > most_common_count = 3 CODEER
        most_common = char # Most common ('D') = char ('D') CODEER
        most_common_count += counter[char] # most_common_count(3) += counter[char] (2) =  most_common_count = 5 CODEER
        binding.irb
      end

    end
    return [most_common_count, most_common] #most_common_count = 3, most_common = "D" CODEOK
  end

  private

  def is_letter?(letter)
    return letter =~ /[a-zA-Z]/i # checks whether the arg(letter) is a letter from a-zA-Z CODEOK
  end
end

counter = LetterCounter.new("Digital Punk")
p counter.calculate_most_common
# Intended output:
# [2, "i"]