def string_checker(text)
  fail "fail, gave an empty string" if text.empty?
  words = text.split(" ")
  if words.include?("#TODO")
    return true
  else
    return false
  end
end