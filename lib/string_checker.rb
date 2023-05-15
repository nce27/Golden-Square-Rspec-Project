def string_checker(text)
  fail "fail, gave an empty string" if text.empty?
  if text.include?("#TODO")
    return true
  else
    return false
  end
end