
vampire = 0

puts "Hello and welcome to DevSteel Corp.! how many employees are being interview today?"
people_staged = gets.chomp.to_i
people_interviewed = 0
until people_interviewed == people_staged


puts "Hello there, what is your name?"
name = gets.chomp.downcase
	if name == "Drake Cula" || name == "Tu Fang"
		vampire += 10
	else

puts "Nice to meet you #{name} How old are you?"
age = gets.chomp.to_i

valid_input = false
until valid_input

puts "What year were you born?"
birth_year = gets.chomp.to_i

current_year = 2016
actual_age = current_year - birth_year


if actual_age == age
	puts "Very good!"
valid_input = true

elsif actual_age <= age 
	puts "Hmmm... thats doesnt sound right, try again?"
	valid_input = false

else actual_age >= age 
	puts "Ok, lets move on..."
	 vampire += 1
	valid_input = true

end
end

valid_input = false
until valid_input

puts "our company's cafeteria serves spaghetti and garlic bread. Should we order a plate for you too? a simple (yes) or (no) will surfice"
garlic = gets.chomp.downcase 

if garlic == "yes"
	puts "Great, we will mark up another order."
	valid_input = true

elsif garlic == "no"
	puts "No worries, itallian food is not for everyone"
	valid_input = true
	vampire +=1

else 
	puts "just a yes or no will surfice"
	valid_input = false
end
end
 
valid_input=false
until valid_input
puts "Would you like to enroll in the companies health insurance?"
health_insurance = gets.chomp.downcase

if health_insurance == "yes"
	puts "Ok, we will email you the paper work at the end of the day"
	valid_input = true

elsif health_insurance == "no"
	puts "Healthcare is not for everyone."
	valid_input = true
	
else
	puts "we need a clear yes or no, company policy"
	valid_input = false	
	
end
end
	puts "Thankyou for you interest in DevSteel corp."
people_interviewed += 1


	if vampire > 4
		puts "Definitely a vampire"
	elsif vampire == 4
		puts "almost certianly a vampire"
	elsif vampire == 3
		puts "probably a vampire"
	elsif vampire == 2
		puts "probably not a vampire"
	else vampire == 1
		puts "results inconclusive"
	end
end
end
