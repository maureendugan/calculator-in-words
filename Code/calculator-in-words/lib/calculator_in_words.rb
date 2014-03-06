def calculator_in_words(phrase)
  split_phrase = phrase.split(' ')
  numbers = phrase.scan(/(\d+)/)
  result = 0


  if split_phrase.index("plus") != nil
    op_index = split_phrase.index("plus")
    result = split_phrase[op_index-1].to_i + split_phrase[op_index+1].to_i 
  elsif split_phrase.index("minus") != nil
    op_index = split_phrase.index("minus") 
    result = split_phrase[op_index-1].to_i - split_phrase[op_index+1].to_i
  end
  puts result
  return result

end

calculator_in_words("What is 55 plus 3?")
calculator_in_words("What is 55 minus 3?")
