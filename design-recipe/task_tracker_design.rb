1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.


2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

task_tracker(str)
method takes a string, returns a boolean depending on whether or not the string contains #TODO
the .include? method will be useful here


3. Create Examples as Tests
Make a list of examples of what the method will take and return.

task_tracker('#TODO') => returns true
task_tracker('#TODO 123') => returns true
task_tracker('#TO DO') => returns false
task_tracker('#ToDo') => returns false
task_tracker('some other string') => returns false
task_tracker('#todo') => returns false
task_tracker('') => returns false



4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.