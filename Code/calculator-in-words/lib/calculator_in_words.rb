def calculator_in_words(phrase)
  split_phrase = phrase.split(' ')
  operators = {'plus' => "+", 'minus' => "-", 'multiplied' => "*", 'divided' => "/"}
  problem_array = []

  split_phrase.each do |word|
    if operators.has_key?(word)
      problem_array << operators[word]
    elsif (word =~ /(\d+)/) != nil
      problem_array << word.to_f
    end
  end

  return calculate(problem_array)
end


def calculate(problem_array)

  while problem_array.length > 1 do
    if problem_array.index('/') != nil
      i = problem_array.index('/')
      problem_array[i-1] = sub_calculate(problem_array[i-1..i+1])
      problem_array.delete_at(i+1)
      problem_array.delete_at(i)
    elsif problem_array.index('*') != nil
      i = problem_array.index('*')
      problem_array[i-1] = sub_calculate(problem_array[i-1..i+1])
      problem_array.delete_at(i+1)
      problem_array.delete_at(i)
    elsif problem_array.index('+') != nil
      i = problem_array.index('+')
      problem_array[i-1] = sub_calculate(problem_array[i-1..i+1])
      problem_array.delete_at(i+1)
      problem_array.delete_at(i)
    elsif problem_array.index('-') != nil
      i = problem_array.index('-')
      problem_array[i-1] = sub_calculate(problem_array[i-1..i+1])
      problem_array.delete_at(i+1)
      problem_array.delete_at(i)
    end
  end

  return problem_array[0]
end


def sub_calculate(problem_array)

    if problem_array[1] == "/"
      result = problem_array[0] / problem_array[2]
    elsif problem_array[1] == "*"
      result = problem_array[0] * problem_array[2]
    elsif problem_array[1] == "+"
      result = problem_array[0] + problem_array[2]
    elsif problem_array[1] == "-"
      result = problem_array[0] - problem_array[2]
    end

  return result
end
