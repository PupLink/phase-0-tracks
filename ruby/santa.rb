# A speak method that will print "Ho, ho, ho! Haaaappy holidays!" 
# (Santa has been working on being more inclusive.)
# An eat_milk_and_cookies method that takes a cookie type 
# (example: "snickerdoodle") as a parameter and prints "That was a good <type of cookie here>!" 
# An initialize method that prints "Initializing Santa instance ...".

class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		
	end
	def speak
		puts "Ho ho ho! Haaaaaaappy holidays!!! I'm an #{ethnicity} #{gender} Santa! "
	end
	def eat_milk_and_cookies (cookie)
		puts "Thant was a good #{cookie}"
		@cookie = cookie
	end
	def travel (location)
		puts "Traveling to #{location}... and away we go!!!"
		@location = location
	end
	def celebrate_birthday
		@age += rand(140)
		puts "happy birthday! #{age} years old!"
	end
	def get_mad_at(reindeer)
		reindeer = @reindeer_ranking[reindeer.to_i]
		puts "dammit #{reindeer}!"
	end
	def gender=(new_gender)
		@gender = new_gender
	end

end

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (Dragon)", "N/A"]
example_genders.length.times do |i|
  santa = Santa.new(example_genders[i], example_ethnicities[i])
  santa.speak
santa.eat_milk_and_cookies("Chocolet Chip")
santa.travel("Chicago")
santa.celebrate_birthday
santa.get_mad_at(rand(8))
santa.gender=("Master Race")

end


santa =Santa.new("Apachie Helecopter", "White")





