def calculator_in_words(phrase)
  split_phrase = phrase.split(' ')
  # operators = {'plus' => "+", 'minus' => "-", 'multiplied' => "*", 'divided' => "/"}
  # numbers = phrase.scan(/(\d+)/)
  # problem_array = []

  question = .match(phrase)
  puts question

  # split_phrase.each do |word|
  #   if operators.has_key?(word)
  #     problem_array << operators[word]
  #   elsif (word =~ /(\d+)/) != nil
  #     problem_array << word.to_i
  #   end
  # end


  # if problem_array[1] == "+"
  #   result = problem_array[0] + problem_array[2]
  # elsif problem_array[1] == "-"
  #   result = problem_array[0] - problem_array[2]
  # end

  # return result
end

calculator_in_words("What is 55 plus 3?")
