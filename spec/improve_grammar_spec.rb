require "improve_grammar"

RSpec.describe "Improve Grammar Method" do 
    context "Starts with a capital letter and finishes with punctuation" do
        it "returns true" do
    result = improve_grammar("Hello World!")
    expect(result).to eq true
        end
    end
    context "Starts with a capital letter and finishes with punctuation" do
        it "returns true" do
    result = improve_grammar("Hello World.")
    expect(result).to eq true
        end
    end
    context "Starts with a capital letter and finishes with punctuation" do
        it "returns true" do
    result = improve_grammar("Hello World?")
    expect(result).to eq true
        end
    end
    context "Starts with a capital letter but doesnt finish with punctuation" do 
        it "returns false" do
            result = improve_grammar("Hello world")
            expect(result).to eq false
        end
    end
    context "Doesn't start with a capital letter but finishes with punctuation" do 
        it "returns false" do
            result = improve_grammar("hello world!")
            expect(result).to eq false
        end
    end

    context "Is an empty string" do 
        it "returns false" do
            result = improve_grammar("hello world!")
            expect(result).to eq false
        end
    end
    context "Doesn't contain any spaces but contains a capital letter at the start and punctuation at the end" do 
        it "returns false" do
            result = improve_grammar("Helloworld!")
            expect(result).to eq false
        end
    end
end