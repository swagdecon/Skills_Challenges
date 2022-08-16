require 'todo'

RSpec.describe 'Initially' do
    it 'Creates an empty string' do
        todo = Todo.new('')
            expect(todo.task).to eq ''
        end

    context 'Creates a valid task' do
        it 'returns the task as a string' do
        todo = Todo.new('Washing up') 
            expect(todo.task).to eq 'Washing up'
        end
    end

    context "#mark_done!" do
        it "marks the task as done" do
        todo = Todo.new('Washing up') 
            expect(todo.mark_done!).to eq "Washing up- done!"
        end
    end
    context "#mark_done! method is called on an empty task list" do
        it "throws error" do
        todo = Todo.new('')
            expect{ todo.mark_done! }.to raise_error 'Mark_done! cannot be called on an empty task list!'
        end
    end
    context "#done? method" do
    it "returns true if task has been completed" do
        todo1 = Todo.new('Washing up')
        todo1.mark_done!
        todo2 = Todo.new('Hoover')
        expect(todo1.done?).to eq true
    end
end 
context "#done? method" do
    it "returns false if the task has not been completed" do
        todo1 = Todo.new('Washing up')
        todo1.mark_done!
        todo2 = Todo.new('Hoover')
        expect(todo2.done?).to eq false
        end
    end
end 