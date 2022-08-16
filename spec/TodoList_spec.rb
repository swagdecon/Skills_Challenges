require 'todo'
require 'todo_list'

RSpec.describe 'integration' do
    context 'when we add a task' do
        it 'pushes that task to a list (and returns a new list of incompleted tasks if we call #incomplete)' do 
            list = TodoList.new
            task1 = Todo.new('Cleaning')
            task2 = Todo.new('Washing up')
            task1.mark_done!
            list.add(task1)
            list.add(task2)
            expect(list.incomplete).to eq ['Washing up']
        end
    end
    context 'when there are no incomplete tasks (for #incomplete)' do
        it 'returns an empty array' do 
            list = TodoList.new
            task1 = Todo.new('Cleaning')
            task2 = Todo.new('Washing up')
            task1.mark_done!
            task2.mark_done!
            list.add(task1)
            list.add(task2)
            expect(list.incomplete).to eq []
        end
    end
    context 'when we add a task' do
        it 'pushes that task to a list (returns a new list of completed tasks if we call #complete)' do 
            list = TodoList.new
            task1 = Todo.new('Cleaning')
            task2 = Todo.new('Washing up')
            task3 = Todo.new('Laundry')
            task1.mark_done!
            task2.mark_done!
            task3.mark_done!
            list.add(task1)
            list.add(task2)
            list.add(task3)
            expect(list.complete).to eq ['Cleaning- done!','Washing up- done!', 'Laundry- done!']
        end
    end
    context 'when there are no complete tasks (for #complete)' do
        it 'returns an empty array' do 
            list = TodoList.new
            task1 = Todo.new('Cleaning')
            task2 = Todo.new('Washing up')
            list.add(task1)
            list.add(task2)
            expect(list.complete).to eq []
        end
    end
    context "when #give_up! is called" do
    it "appends '- done!' to each task in the list" do
        list = TodoList.new
            task1 = Todo.new('Cleaning')
            task2 = Todo.new('Washing up')
            task3 = Todo.new('Laundry')
            task4 = Todo.new('Hoover')
            list.add(task1)
            list.add(task2)
            list.add(task3)
            list.add(task4)
            list.give_up!
            expect(list.complete).to eq ['Cleaning- done!','Washing up- done!', 'Laundry- done!', 'Hoover- done!']
        end
    end
end


