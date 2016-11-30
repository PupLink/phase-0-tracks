class Puppy
	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end
	def speak (bark)
		counter = 0
		until counter == bark
			puts "Woof!"
			counter += 1
		end
	end
	def roll_over
		puts "rolls over"
	end
	def dog_years (human_years)
		dog_years = human_years * 7
		p dog_years 
	end
	
	
	
end
Link = Puppy.new
Link.fetch("Ball")
Link.speak(5)
Link.roll_over
Link.dog_years(4)
def Puppy.initialize
	puts "initializing new puppy instance..."
end



wags = []
counter = 0
until counter == 51
	
	wags << Puppy.new
	counter +=1
end
wags.each do |wag|
	
	wag = "wag"
	p wag