require 'task_tracker'

RSpec.describe "task_tracker method" do 
        context "#TODO is in the string" do
            it "returns true" do 
            result = task_tracker('#TODO') 
        expect(result).to eq true
        end
    end
        context "#TODO is in the string along with other chars" do
            it "returns true" do 
            result = task_tracker('#TODO 123') 
        expect(result).to eq true
        end
    end 
        context "#TO DO is separate in the string" do
            it "returns false" do 
            result = task_tracker('#TO DO') 
        expect(result).to eq false
        end
    end
        context "#ToDo is mixed in upper and lower case in the string" do
            it "returns false" do 
            result = task_tracker('#ToDo') 
        expect(result).to eq false
        end
    end
        context "#TODO is not present the string" do
            it "returns false" do 
            result = task_tracker('some other string') 
        expect(result).to eq false
        end
    end
        context "#TODO is lowercase " do
            it "returns false" do 
            result = task_tracker('#todo') 
        expect(result).to eq false
        end
    end
        context "#TODO doesnt have a hash at the start" do
            it "returns false" do 
            result = task_tracker('TODO') 
        expect(result).to eq false
        end
    end
    context "The string is empty" do
        it "returns false" do 
            result = task_tracker('') 
        expect(result).to eq false
        end
    end
end

