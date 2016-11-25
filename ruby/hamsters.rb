puts "What is this hamster's a name."
name = gets.chomp 
name = name

puts "awe! #{name}, such a cute little fuzzball"

	valid_input = false
	
	until valid_input
puts "on a volume scale of 1-10 how loud is your hamster?"
volume = gets.chomp.to_i
	
	if volume >= 1 and volume <= 4
		puts "A quiet friend, we can find a home for #{name} in no time, even if they are about #{volume} loud."
		valid_input = true
	
	elsif 
		volume == 5 || volume == 6
		puts "An average little hamster, im sure we can find #{name} a home in no time, most people have hamsters around #{volume}."
		valid_input = true
	elsif 
		volume >= 7 and volume <= 10
		puts "A cute little cherper, a lot of people do like the excentric type, #{name} will find a place in no time, even if he is around #{volume}!"
		valid_input = true
	else
	puts "Please put a number in from 1-10"
	end
end
puts "what color is your hamster?"
color = gets.chomp

puts "do you have an estimate on how old #{name} is? If no press enter to continue."
	age = gets.chomp.to_i
	if age == 0
		puts "no worries, we can leave this blank"

	else 
		puts "a #{color} #{name} about age #{age}, thank you for all the information."
	end

puts "do you think your hamster is a good candidate for adoption? Yes or No?"
valid_input = false
until valid_input
approval = gets.chomp.downcase

	if approval == "yes" 
		puts "great! we will put him in our systems for adoption right away! thank you so much for bringing #{name} to us today. i am gure he will make someone very happy in the future."
	valid_input = true
	elsif approval == "no"
		puts "Not to worry, we can still take #{name} and put him in our foster hamster houses, #{name} will have everything and anything they need to live a comfertable life. I am sure he will ove his new home, and thank you for bringing him to us today."
	valid_input = true
	else
		puts "Im sorry, thats not a valid input."
	valid_input = false
	end
end
 puts "Final entry... "
 puts "#{name} is our latest entry to our systems.
He is a #{color} fuzzy friend with a voice around #{volume} on our scale of 1-10.
"
if age == 0
	puts "#{name}'s age is undetermined and should be kept in mind when medical paper is being filled out."
else 
	puts "our record here states that #{name} is about #{age} years old."
end

if approval == "yes"
	puts "The previouse owner has trusted a capability for adoption and will be placed accordingly in the shelter."
else
	puts "The previouse owner has marked that adoption is not recommended for this hamster."
end

