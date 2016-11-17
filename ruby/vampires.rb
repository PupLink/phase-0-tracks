
vampire_count = 0
human_count = 5

puts "Hello and welcome to DevSteel Corp.! how many employees are being interview today?"

people_interviewed

puts "What is your name?"
name = gets.chomp

puts "How old are you?"
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







