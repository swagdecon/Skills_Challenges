class Task_Tracker 
def initialize
    @all_tasks = []
end


    def add(task) 
    @all_tasks << task
    end

  def complete(task) 
    fail 'No such task.' unless @all_tasks.include?(task)
        @all_tasks.delete(task)
    end

    def list 
    return @all_tasks
    end
end