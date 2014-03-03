def allergies(score)
  allergies = ["eggs", "peanuts", "shellfish", "strawberries", "tomatoes", "chocolate", "pollen", "cats"]

  has_allergies = []

  7.downto(0) do |num|
    if score >= 2**num
      has_allergies << allergies[num]
      score -= 2**num
    end
  end
  return "Allergies: " + has_allergies.join(", ") + "."
end

