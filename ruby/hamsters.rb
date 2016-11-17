
class Hamster

def name 
	@name
end
def color
	@color
end
def age
	@age
end
def volume
	@volume
end
def approval
	@approval
end
end

the_hamster = Hamster.new

puts "What is this hamster's a name."
name = gets.chomp 
the_hamster.name = name

puts "awe! #{name}, such a cute little fuzzball"

	valid_input = false
	
	until valid_input
puts "on a volume scale of 1-10 how loud is your hamster?"
the_hamster.volume = gets.chomp.to_i
	
	if the_hamster.volume >= 1 and volume <= 4
		puts "A quiet friend, we can find a home for #{name} in no time, even if they are about #{volume} loud."
		valid_input = true
	
	elsif 
		the_hamster.volume == 5 || volume == 6
		puts "An average little hamster, im sure we can find #{name} a home in no time, most people have hamsters around #{volume}."
		valid_input = true
	elsif 
		the_hamster.volume >= 7 and volume <= 10
		puts "A cute little cherper, a lot of people do like the excentric type, #{name} will find a place in no time, even if he is around #{volume}!"
		valid_input = true
	else
	puts "Please put a number in from 1-10"
	end
end
puts "what color is your hamster?"
color = gets.chomp

puts "do you have an estimate on how old #{name} is? If no press enter to continue."
	age = gets.chomp
	if age == nil 
		puts "no worries, we can take care of this later"

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
 puts "Thank you for using out Adoption Bot 3000"
