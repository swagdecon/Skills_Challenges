require 'task_tracker_class'

RSpec.describe Task_Tracker do
    context "Given no tasks" do 
        it "has an empty list" do
        task = Task_Tracker.new 
            expect(task.list).to eq []
        end
    end

        context "Given a task" do
            it "adds the items to a list" do
        task = Task_Tracker.new 
        task.add('Example Task')
        expect(task.list).to eq ['Example Task']
        end
    end
    context "Given 2 task" do
        it "has both items to a list" do
    task = Task_Tracker.new 
    task.add('Example Task')
    task.add('Example Task 2')
    expect(task.list).to eq ['Example Task','Example Task 2']
    end
end
    context "when we complete a task" do
    it "removes the task from the list" do
        task = Task_Tracker.new 
        task.add('Example Task 1')
        task.add('Example Task 2')
        task.complete('Example Task 2')
        expect(task.list).to eq ['Example Task 1']
        end
    end

context "when we complete a non existent task" do
    it "fails" do
        task = Task_Tracker.new 
        task.add('Wash the car')
        expect{ task.complete('Example task 4') }.to raise_error 'No such task.'
        end
    end
end