module Shout
	# # In a module: When you see self in an instance method,
	# # it refers to the instance of the class in which the module is included. 
	# # When you see self outside of an instance method, it refers to the module.
	# def self.yell_angrily(words)
	# 	words + "!!!" + " :("
	# end
	# def self.yell_happily(words)
	# 	words + "!!!" + " :D"
	# end

def fight(enemy)
    puts "Take out the #{enemy} Grim over there!"
  end

end

class Yang_Shaulong
  include Shout
end

class Wiess_Shniee
  include Shout
end

yang = Yang_Shaulong.new
yang.fight(87)

wiess = Wiess_Shniee.new
wiess.fight(163)

#Data is relevant to 'The RWBY Kill-Count' from a TV show