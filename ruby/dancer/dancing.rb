class Dancer
	attr_accessor :age, :partner, :tutu
	attr_reader :name, :card
	def initialize(name, age)
		@name = name
		@age = age
		@card = []
		
		@tutu = tutu
	end


	def pirouette
		"*twirls*"
	end

	def bow
		"*bows*"
	end

	def tutu
		"light blue"
	end

	def queue_dance_with(partner)
		@partner = partner
		@card << partner
	end

	def card 
		@card
	end

	def begin_next_dance(partner)
		@partner = partner
		partner.each do |dancer|
			"Now dancing with #{dancer}."
			@card.delete[0]
		end
	end

end

Dancer.new("Misty Copeland", 33)

# ran out of time :/