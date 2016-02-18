#Nicole Iwasaki - 2/18/16, RANDOMlol menu generator

#preset baseline, arrays of foods and descriptors
food_type1 = ["hot", "cold", "raw", "soft", "crunchy", "aged", "creamy", "sweet", "tangy", "salty"]
food_type2 = ["cheese", "chicken", "beef", "pork", "lentil", "tofu", "vegetable", "tempeh", "maple", "fruit"]
food_type3 = ["salad", "casserole", "pie", "pizza", "taco", "souffle", "lasagna", "burrito", "cake", "burger"]

#loop 10 times for 10 menu items
10.times do |i|
  item_number = i+1
  items = [0]
  3.times do |n| #small loop for randomizing what food_type index# is selected
    items[n] = rand(10)
  end
  puts items
  puts "#{item_number}. #{food_type1[items[0]]} #{food_type2[items[1]]} #{food_type3[items[2]]}"
end
