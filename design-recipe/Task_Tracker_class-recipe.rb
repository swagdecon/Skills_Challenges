# 1. Describe the Problem
# Put or write the user story here. Add any clarifying notes you might have.

# As a user
# So that I can keep track of my tasks
# I want a program that I can add todo tasks to and see a list of them.

# As a user
# So that I can focus on tasks to complete
# I want to mark tasks as complete and have them disappear from the list.


# 2. Design the Class Interface
# Include the initializer and public methods with all parameters and return values.
# class Task_Tracker 
#initalize empty array for hashes to be put into
#    method to add tasks
#    method to view tasks
#    method to markascomplete and remove 

# 3. Create Examples as Tests
# Make a list of examples of how the class will behave in different situations.
# Encode each example as a test. You can add to the above list as you go.

1. add('') => Throw an error, input cannot be empty
add('Task') => adds the task to an initialized array
view() => shows all tasks
remove('taskname') => removes taskname at the array position it is called at
remove('') => throws an error, remove cannot be empty

# 4. Implement the Behaviour
# After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

