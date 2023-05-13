def stock_picker(days)
  combos = {}
  profit = 0
  one = 0
  two = 0
  days.each_with_index do |day, index|
    if days[(index + 1)..(days.length - 1)].max && profit < days[(index + 1)..(days.length - 1)].max - day
      profit = days[(index + 1)..(days.length - 1)].max - day
      one = index
      two = days.find_index(days[(index + 1)..(days.length - 1)].max)
    end
  end
  return [one, two]
end