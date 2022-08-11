require 'GrammarStats'

RSpec.describe GrammarStats do
    describe "#Check method" do 
        it "Checks the text for a capital letter at the start and a full stop at the end" do
            grammar = GrammarStats.new
        expect(grammar.check('Hello, my name is Connor.')).to eq true
        end
    end
    context "Doesnt start with a capital letter but finishes with punctuation" do
        it "returns false" do
            grammar = GrammarStats.new
            expect(grammar.check('hello, my name is Connor.')).to eq false
        end
    end
    context "Starts with a capital letter but doesn't finish with punctuation" do
        it "returns false" do 
            grammar = GrammarStats.new
            expect(grammar.check("Hello, my name is Connor")).to eq false
        end
    end
    context "Doesn't start with either a capital letter or punctuation" do
        it "returns false" do
            grammar = GrammarStats.new
            expect(grammar.check("hello, my name is Connor")).to eq false
        end
    end 
    context "Text is empty" do
        it "fails" do
            grammar = GrammarStats.new
            expect{ grammar.check('') }.to raise_error 'Text cannot be empty'
        end
    end

    describe "Percentage_good method" do
        context('There are an equal number of good and bad texts') do
        it "Returns 50" do
        grammar = GrammarStats.new
        grammar.check("Hello, my name is Connor.") # Should update texts_good by 1
        grammar.check("Hello, my name is Connor.") # Should update texts_good by 1
        grammar.check("hello, my name is connor")# Should update texts_bad by 1
        grammar.check("hello, my name is Connor") # Should update texts_bad by 1

        expect(grammar.percentage_good).to eq 50
        end
    end
    context('The percentage is fixed-point value') do
        it "rounds up to the nearest integer" do
            grammar = GrammarStats.new
            grammar.check("Hello, my name is Connor.") # Should update texts_good by 1
            grammar.check("Hello, my name is Connor.") # Should update texts_good by 1
            grammar.check("Hello, my name is Connor.") # Should update texts_good by 1
            grammar.check("hello, my name is connor")# Should update texts_bad by 1
            grammar.check("hello, my name is Connor") # Should update texts_bad by 1
            expect(grammar.percentage_good).to eq 60
        end
    end
    context('All the texts pass') do
        it "returns 100" do 
            grammar = GrammarStats.new
            grammar.check("Hello, my name is Connor.") # Should update texts_good by 1
            grammar.check("Hello, my name is Connor.") # Should update texts_good by 1
            expect(grammar.percentage_good).to eq 100
        end
    end
    context('All the texts fail') do
        it "returns 100" do 
            grammar = GrammarStats.new

            grammar.check("hello, my name is Connor") # Should update texts_good by 1
            grammar.check("hello, my name is Connor") # Should update texts_good by 1
            expect(grammar.percentage_good).to eq 0
        end
    end
end
end
