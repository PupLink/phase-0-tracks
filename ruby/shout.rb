module Shout
	# def self.yell_angrily(words)
	# 	words + "!!!" + " :'("
	# end
	# def self.yell_Happily(words)
	# 	words + "!!!" + " :D"
	# end
	def Yell(words)
		puts "gosh im so full of energy I could! ...I! ...Could!  ...#{words}!!!! "
end

# Shout.yell("FUCK all the schoolwork on the HOLIDAYS")
# Shout.yell("MFF is this weekend")

class Student
	include Shout
end

class Personal
	include Shout
end

dj = Student.new
dj.Yell("AHHHHHHHHHHHHHHH!!!")
link = Personal.new
link.Yell("Wah-Hooooooo!!!")
end