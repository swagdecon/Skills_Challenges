class TodoList
    def initialize
      @allTasks = []
    end
  
    def add(todo) # todo is an instance of Todo
    @allTasks << todo.task
    end

    def incomplete
      @allTasks.reject{|e| e.include?("done!") }
    end
  
    def complete
      @allTasks.filter{ |e| e.include?("done!") }
    end
  
    def give_up!
      @allTasks.map {|e| e << '- done!'}
    end
  end