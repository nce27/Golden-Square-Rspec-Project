def improving_grammar(text)
  if text.empty?
    # => false
    raise StringQualityException.new("Cannot give empty string!")

  elsif text[0] != text[0].upcase #tests if the first letter is lowercase
    # => false
    raise StringQualityException.new("String must begin with capital letter!")  

  elsif text[-1] != "." #tests if the sentence ends with a full stop
    # => false
     raise StringQualityException.new("String must end with full stop!")

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