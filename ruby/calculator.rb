puts "Calculator Quiz\nJust write your input like you would on papper, \nbe sure to use spaces, then press enter \nEnter 'done' to quit."
puts
puts

def calc (num1, sym, num2)
  if sym == "+" 
    num1 + num2
  elsif sym == "-" 
    num1 - num2
  elsif sym == "*" 
    num1 * num2
  elsif sym == "/" 
    num1 / num2
  end 
end

str = gets.chomp
calculations = []

until str == "done"
    
  formatted_str = str.split(" ")
  num1 = formatted_str[0].to_i
  num2 = formatted_str[2].to_i
  sym = formatted_str[1]

  calc_return = calc(num1, sym, num2)
  puts calc_return

  # str = "3 + 3"
  # calc_return = 6

  # "3 + 3" + " = " + "6"
  calculations << str + " = " + calc_return.to_s
    # calculations << str.join

    # if str[0] == "done"
    #  all_calculations = calculations.length
    #  all_calculations.times {|i| puts calculations[i]}
    #  return true 
    # end
  str = gets.chomp
end

puts "calculations performed in this session..."
puts

# how to print a hash
calculations.each {|num1, sym, num2| puts ">> #{num1} #{sym} #{num2}"}



# until calc(0, '+', 0)

# end

# tried many ways to print the array 'calculations' but with no avail... 
# really want to talk to my teacher about it, i really want to know this for the future...
# if i still have one at DBC :(