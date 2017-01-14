# Take an name
# swap the first and last name
# change the vowels (a,e,i,o,u) => (e,i,o,u,a)
#change the alphabet using .next ~letters.map! { |letter| letter.next}


puts "What is your first name?"
first_name = gets.chomp.downcase
puts "what is your last name?" 
last_name = gets.chomp.downcase
name = (last_name + " " +first_name).split('')


        

name.map! {|letter| letter.next}
new_name = name.join
vowels = ["a", "e", "i", "o", "u"]

if
    new_name == "a" 
    new_name.map! {|letter| letter.next}
elsif
    new_name == "e" 
    new_name.map! {|letter| letter.next}
elsif 
    new_name == "i" 
    new_name.map! {|letter| letter.next}   
elsif 
    new_name == "o" 
    new_name.map! {|letter| letter.next}
elsif 
    new_name == "u" 
    new_name.map! {|letter| letter.next}
else
    
end

p new_name
puts "hope you had fun..."


