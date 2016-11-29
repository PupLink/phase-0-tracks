#Calculator method needs 3 paramaters

puts "Calculator Quiz\nJust write your input like you would on papper, \nbe sure to use spaces, then press enter \nEnter 'done' to quit."

result = 0
def calc (num1, sym, num2)
  while true
    print ">> " 
    str = gets.chomp.split(" ")  # splits into array, rejects blanks
    return if str[0] == 'done'      # quit if first element is 'done'

    num1 = str[0].to_i
    num2 = str[2].to_i
    sym = str[1].to_sym

    case sym
    when :+ then puts num1 + num2
    when :- then puts num1 - num2
    when :* then puts num1 * num2
    else
      puts "invalid input"
    end
  end
  

end

until calc(0, '+', 0) false
	
result += 1
end
p "#{result} calculations performed."