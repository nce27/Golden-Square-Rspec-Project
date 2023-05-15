# Grammar Method Design Recipe


## Description of the problem

As a user, so that I can improve my grammar,
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## Design method

is_correct check_grammar(text)

# * test is a string varibale with words in it.
# * test is a boolean varibale that verifies if the text is correct or not.


## Example Tests
 ```ruby

  # 1 - and empty string

    check_grammar("")
    # => "fail not a sentence"

  # 2 

    #check_grammar.begins_with.upcase?
    check_grammar("Hello there.")
    # => true

  # 3 

     #check_grammar.begins_with.upcase?
    check_grammar("Hello there")
    # => false

  # 4  

     #check_grammar.begins_with.upcase?
    check_grammar("hello there.")
    # => false

  # 5

    #check_grammar.begins_with.upcase?
    check_grammar("HELLO there.")
    # => true

  # 6

    #check_grammar.begins_with.upcase?
    check_grammar("HELLO there!")
    # => true

  # 7

    #check_grammar.begins_with.upcase?
    check_grammar("HELLO there?")
    # => true

  # 8

     #check_grammar.begins_with.upcase?
    check_grammar("Hello there,")
    # => false

 ```


## Implement the behaviour