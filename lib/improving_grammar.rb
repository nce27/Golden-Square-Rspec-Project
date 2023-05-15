def improving_grammar(text)
  if text.empty?
    raise StringQualityException.new("Cannot give empty string!")
  #elsif

  #   raise StringQualityException.new("String must end with full stop!")

  # elsif text[0] != text[0].upcase
  #   raise StringQualityException.new("String must begin with capital letter!")

   elsif text[0] != text[0].upcase
      return false
  else
    return true
  end
end

class StringQualityException < Exception
  def initialize(message) 
    super("StringQualityException occured: #{message}")
  end
end