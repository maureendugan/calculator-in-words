require('rspec')
require('allergies')

describe('allergies') do
  it('returns "eggs" if allergy score is odd') do
    allergies(1).should(eq("Allergies: eggs."))
  end
  it('checks a score for cat allergies') do
    allergies(129).should(eq("Allergies: cats, eggs."))
  end
  it('checks a score for cat allergies') do
    allergies(29).should(eq("Allergies: tomatoes, strawberries, shellfish, eggs."))
  end
end
