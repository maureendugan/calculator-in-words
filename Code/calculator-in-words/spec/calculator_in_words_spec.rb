require('rspec')
require('calculator_in_words')

describe('calculator_in_words') do
  it('returns the sum of two numbers if input phrase includes word "plus"') do
    calculator_in_words('What is 5 plus 3').should(eq(8))
  end
  it('returns the difference of two numbers if input phrase includes word "minus"') do
    calculator_in_words("What is 10 minus 4?").should(eq(6))
  end
end
