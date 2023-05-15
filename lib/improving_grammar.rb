def improving_grammar(text)
  if text.empty?
    raise EmptyStringException.new("Cannot give empty string!")
  end
end

class EmptyStringException < Exception
  def initialize(message)
    super("EmptyStringException occured: #{message}")
  end
end