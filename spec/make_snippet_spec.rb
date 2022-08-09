require "make_snippet"

RSpec.describe "make_snippet method" do
    it "returns summary of string" do
         result = make_snippet("The quick brown fox jumped over the fence") 
         expect(result).to eq "The quick brown fox jumped ..."
    end
end