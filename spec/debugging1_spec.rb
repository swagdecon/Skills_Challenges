require "debugging1"

RSpec.describe "say_hello method" do
    it "should output a hello + name message" do
        result = say_hello('Ella')
        expect(result).to eq 'hello Ella'
    end
end