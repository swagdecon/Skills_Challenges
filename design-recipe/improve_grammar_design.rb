1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.


2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

improve_grammar(str)
Takes a string as an argument
Returns a boolean value: returning true if the string starts with a capital letter and finishes with any punctuation mark.


3. Create Examples as Tests
Make a list of examples of what the method will take and return.

improve_grammar("Hello World!") => true
improve_grammar("hello World!") => false
improve_grammar("Hello world") => false
improve_grammar("Helloworld!") => false
improve_grammar("") => false

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.