ingredients = {1 => 'flour', 2 => 'cayenne', 3 => 'salt', 4 => 'black pepper', 5 => 'thyme'}
ingredient_list = ingredients.length
ingredient_list.times {|i| puts ingredients[i]}

ingredients.each do |order, dry|
	puts "mix #{order} the #{dry}"
end

puts ("~")*40

recipe = ["Bread", "Dumpligs", "Hash Browns", "Curry Paste", "Pizza"]
recipe_list = recipe.length
recipe_list.times {|i| puts recipe[i]}


# i dont want to use a .map! here because it would completly change the relationship between the 
# hash and the array, to use .map! is to change all my recipes to the same recipe
recipe.map do |i|
	recipe [3] = "Sautee Califlower"
end
p recipe

####################################################################################################################

numeric = [1, 2, 3, 4, 5, 0]
# words = {1=> 'word_1', 2 => 'word_2', 3 => 'word_3', 4 => 'word_4', 5 => 'word_5'}

p numeric

numeric.take_while {|number| number < 4}

p numeric

#Passes elements to the block until the block returns nil or false, then stops iterating and returns an array of all prior elements.
#"We, as a team, expected to see results come out with number 1, 2, and 3 reflected in the results, take_while shows numbers being taken under the circumstances that the specified number < 4." 

###############################################


digits = [1, 2, 3, 4, 5, 0]

p digits

digits.drop_while {|number| number < 3}

p digits

#Drops elements up to, but not including, the first element for which the block returns nil or false and returns an array containing the remaining elements.
#"Like "take_while", "drop_while" also gave us unfavorable results, where the specified number would be < 3, a printed result should show 3, 4, and 5."