# Calculator method needs 3 paramaters

puts "Type alias until satisfied...\nEnter 'done' to quit."

result = 0
def calc (num1, num2)
	while true
		print ">>  First and Last name please... " 
    str = gets.chomp.split('')  # splits into array, rejects blanks
    return if str[0] == "done"  # quit if first element is 'done'

    num1 = str[0].to_s
    num2 = str[1].to_s

# make an array for vowel placment
    vowels = ["a", "e", "i", "o", "u"]

# push letters forward 1
    letters = "bcdfghjklmnpqrstvwxyz".split('')
    letters.class
    letters.map! { |letter| letter.next}

# iterate through the array with .each

p str.map! { |letter| letter.next}.join('')


end


end

calc(0, 0) 


p "hope you had fun..."