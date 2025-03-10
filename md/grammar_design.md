# Grammar Method Design Recipe


## Description of the problem

As a user, so that I can improve my grammar,
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## Design method

is_correct = check_grammar(text)

# * text is a string varibale with words in it.
# * is_correct is a boolean varibale that verifies if the text is correct or not.


## Example Tests
 ```ruby

  # 1 - and empty string
    improving_grammar("")
    # => "false not a sentence"

  # 2 
    improving_grammar("Hello there.")
    # => true

  # 3 
    improving_grammar("Hello there")
    # => false

  # 4  
    improving_grammar("hello there.")
    # => false

  # 4.5  
    improving_grammar("hello there")
    # => false

  # 5
    improving_grammar("HELLO there.")
    # => true

  # 6
    improving_grammar("HELLO there!")
    # => true

  # 7
    improving_grammar("HELLO there?")
    # => true

  # 8
    improving_grammar("Hello there,")
    # => false

 ```


## Implement the behaviour