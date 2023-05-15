def improving_grammar(text)
  if text.empty?
    # => false
    raise StringQualityException.new("Cannot give empty string!")
  end
  #last_char_is_incorrect = text.include?[".", "!"]
  last_char_is_lowercase = text[0] != text[0].upcase

  if last_char_is_lowercase #tests if the first letter is lowercase
    # => false
    raise StringQualityException.new("String must begin with capital letter!")  

  elsif text[-1] != "." #|| text[-1] != "!" #tests if the sentence ends with a full stop
    # => false
     raise StringQualityException.new("String must end with a valid sentence ender!")

  #elsif text[-1] != "!" || text[-1] != "?" 

  elsif last_char_is_lowercase && text[-1] != "."
   # => false
    raise StringQualityException.new("String must begin with capital letter and end with a valid sentence ender!")
  
  else
    # => true
    return true
  end
end

class StringQualityException < Exception
  def initialize(message) 
    super("StringQualityException occured: #{message}")
  end
end