# String Checker Method Design Recipe

## 1. Describe the Problem

_As a user, So that I can keep track of my tasks,_
_I want to check to see if a text includes the string #TODO_

## 2. Design the Method Signature

string_checker(text)
is_present

 _Text is a varible which holds strings._
 _ispresent is a boolean that verifies whether #TODO is exists in text_ 


## Example Tests
 ```ruby

  # 1 - and empty string
    string_checker("")
    # => "fail, gave an empty string"

  # 2 
    string_checker("#DONT")
    # => false

  # 3 
    string_checker("TODO")
    # => false

  # 4 
    string_checker("#TODO")
    # => true

  # 5 
    string_checker("this is what #TODO")
    # => true

 ```