def allergies(score)
  allergies = {1 => "eggs", 2 => "peanuts", 4 => "shellfish", 8 => "strawberries", 16 => "tomatoes", 32 => "chocolate", 64 => "pollen", 128 => "cats"}

  has_allergies = []
  7.downto(0) do |num|
    if score >= 2**num 
      has_allergies << allergies[2**num]
      score -= 2**num
    end
  end
  return "Allergies: " + has_allergies.join(", ") + "."
end
allergies(270)


# def allergies(score)
#   allergies = ["eggs", "peanuts", "shellfish", "strawberries", "tomatoes", "chocolate", "pollen", "cats"]

#   has_allergies = []

#   7.downto(0) do |num|
#     if score >= 2**num
#       has_allergies << allergies[num]
#       score -= 2**num
#     end
#   end
#   return "Allergies: " + has_allergies.join(", ") + "."
# end

