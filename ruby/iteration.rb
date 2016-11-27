
ingredents = {1 => 'flour', 2 => 'salt', 3 => 'pepper', 4 => 'cyanne', 5 => 'sage'}

p ingredents
#iterate through the hash with .each

ingredents.each do |order, dry|
	puts "mix #{order} the #{dry}"
end

ingredents.map do |dry|
	ingredents [5] = "butter"
end

p ingredents

#################################################

integer = [1, 2, 3, 4, 5]
words = {1=> 'word_1', 2 => 'word_2', 3 => 'word_3', 4 => 'word_4', 5 => 'word_5'}

puts "original integers:"
p integer

integer.delete_if {|number| number < 3}

puts "new integers"
p integer

################################################

numbers = [1, 2, 3, 4, 5]
words = {1=> 'word_1', 2 => 'word_2', 3 => 'word_3', 4 => 'word_4', 5 => 'word_5'}

puts "original data:"
p numbers

numbers.keep_if {|number| number < 3}

puts "new data"
p numbers

################################################

numeric = [1, 2, 3, 4, 5, 0]
words = {1=> 'word_1', 2 => 'word_2', 3 => 'word_3', 4 => 'word_4', 5 => 'word_5'}

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