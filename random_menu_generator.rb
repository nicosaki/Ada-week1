#Nicole Iwasaki - 2/18/16, RANDOMlol menu generator

#preset baseline; arrays of foods and descriptors - empty array to track used elements
food_type1 = ["hot", "cold", "seared", "soft", "crunchy", "aged", "creamy", "sweet", "tangy", "salty"]
food_type2 = ["cheese", "chicken", "beef", "pork", "lentil", "tofu", "vegetable", "tempeh", "potato", "fruit"]
food_type3 = ["salad", "casserole", "pie", "pizza", "taco", "souffle", "lasagna", "burrito", "cake", "burger"]
used_randoms = [Array.new(), Array.new(), Array.new()]



#loop 10 times for 10 menu items
10.times do |i|
  item_number = i+1
  items = [0]
  3.times do |n| #nested loop for randomizing what food_type index# is selected
    items[n] = rand(10)
    if used_randoms[n].include? items[n]
      redo
    else
    used_randoms[n] << items[n]
    end
  end
  puts "#{item_number}. #{food_type1[items[0]]} #{food_type2[items[1]]} #{food_type3[items[2]]}"
end
