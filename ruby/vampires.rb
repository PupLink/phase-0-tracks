
puts "Hello and welcome to DevSteel Corp.! how many employees are being interview today?"
people_staged = gets.chomp.to_i
people_interviewed = 0
until people_interviewed == people_staged


	puts "Hello there, what is your name?"
	name = gets.chomp

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
			vampires_are_immortal = true
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
			vampires_hate_garlic = true
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
			vampires_dont_get_sick = true
			valid_input = true

		else
			puts "We need a clear yes or no, company policy."
			valid_input = false	

		end
	end
	puts "Thankyou for you interest in DevSteel corp."

	valid_input = false
	until valid_input
		puts "On a final note, do you have any allergies at all? go ahead and name them off one at a time, when you are finished entering, or have no allergies at all, enter (done) to submit"
		allergies = gets.chomp.downcase

		
		if allergies == "done"
			puts "Thank you for your submission! Have a great rest of the day!"
			valid_input = true
		elsif allergies == "sunshine"
			puts "We are going to stop you right there... I am sorry we are out of time, we will call you in a follow up reguarding our applications. Thank you, have a wonderful day."
			valid_input = true
		else 
			puts "Please continue..."
			valid_input = false	
		end
	end
	people_interviewed += 1


	if name == "Drake Cula"
		puts "Definitely a vampire!"
	elsif name == "Tu Fang"
		puts "Definitely a vampire!"
	elsif allergies == "sunshine"
		puts "Probably a vampire."
	elsif vampires_are_immortal && vampires_hate_garlic && vampires_dont_get_sick
		puts "Almost certianly a vampire!"
	elsif vampires_are_immortal && (vampires_hate_garlic || vampires_dont_get_sick)
		puts "Probably a vampire."
	elsif vampires_dont_get_sick || vampires_hate_garlic
		puts "Results inconclusive."
	else
		puts "Probably not a vampire."
	end
end

if people_staged == people_interviewed
p "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end
