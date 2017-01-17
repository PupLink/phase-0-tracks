puts "Calculator Quiz\nJust write your input like you would on papper, \nbe sure to use spaces, then press enter \nEnter 'done' to quit."

result = 0

def calc (num1, sym, num2)
  until false
    print ">> " 
    str = gets.chomp.split(" ")  # splits into array, rejects blanks
    calculations = []
    calculations << str.join

    if str[0] == "done"   then return  
     all_calculations = calculations.length
     p all_calculations.times {|i| puts calculations[i]}
     true 
  # quit if first element is 'done'

end 

num1 = str[0].to_i || str[0].to_str
num2 = str[2].to_i
sym = str[1].to_sym

case sym
when :+ then puts num1 + num2
when :- then puts num1 - num2
when :* then puts num1 * num2
when :/ then puts num1 / num2
else
  puts "invalid input"
end
end  
end


until calc(0, '+', 0)

end

# tried many ways to print the array 'calculations' but with no avail... 
# really want to talk to my teacher about it, i really want to know this for the future...
# if i still have one at DBC :(