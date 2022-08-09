require 'calc_reading_time'

RSpec.describe "calc_reading_time method" do
    context "Given a string < 200 words" do 
        it "returns 1" do
            result = calc_reading_time('one two')
    expect(result).to eq 1
    end
end

    context  "Given a string of 200 words" do 
        it "returns 1" do 
            result = calc_reading_time('one ' * 200 )
    expect(result).to eq 1
    end
end

    context "Given a string of 300 words" do 
        it "returns 2" do
    expect(calc_reading_time('one ' * 300 )).to eq 2
    end
end

    context "given a string of 400 words " do
        it "returns 2" do 
    expect(calc_reading_time('one ' * 400 )).to eq 2
    end
end

    context "given a string of 5000 words" do
        it "returns 25" do
    expect(calc_reading_time('one ' * 5000 )).to eq 25
    end
end
    context "when an empty string is provided" do
        it "returns 0" do
            result = calc_reading_time('')
    expect(result).to eq 0
        end
    end
end
