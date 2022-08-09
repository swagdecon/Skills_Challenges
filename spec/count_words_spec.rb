require "count_words"

RSpec.describe "count_words method" do
    it "counts the num of words in a string" do
    result = count_words("Hello World!")
    expect(result).to eq 2 
end

end