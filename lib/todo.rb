class Todo
    def initialize(task) # task is a string
        @task = task
    end

    def task
    return  @task
    end
  
    def mark_done!
        fail 'Mark_done! cannot be called on an empty task list!' unless @task.length > 0
      @task << '- done!'
      # Returns nothing
    end

    def done?
    @task.include?('- done!') ? true : false
    end

  end