# was looking at a better way to store words and found '%w' to be a huge help
words = %w"dragon dungeon bear goblin spider queen traps unicorn programmer treasure gold silver princess fairy potion poison light copper knight thief magus fantasy"
total_chances = 6
wrong_try = 0
right_guess = ''

#got creative for end results

hanged = <<HANG
 +---+-
 |   |
 |   0
 |   |\\
 |   /\\
-+----------
HANG
survived = <<WIN
   (@)
  ^\\|
    |/^
____|_____
WIN

#puts words.inspect

word = words[rand(words.length) - 1]
#word = words[1]

#create a method to pull letter guesses and and make them '_' symbols
def get_placeholder sample_word, guessed_words
  placeholder = ''
  sample_word.chars { |char| 
    placeholder += (guessed_words.include? char)? char : '_'
  }

  placeholder
end

puts "clear"
puts "Guess what is:"+ get_placeholder(word, "")

#loop required to guess over and over
while true
  print "Enter word [#{total_chances - wrong_try} chances left]:"

  char = gets.chomp
  puts "clear"
  
  if word.include? char

    if(right_guess.include? char)
      puts char + " is already given and accepted."
      puts "Try another: " + get_placeholder(word, right_guess)
    else
      right_guess = right_guess + char
      placeholder = get_placeholder(word, right_guess)

      puts "Great! " + placeholder
    end

    unless placeholder.include? '_'
      puts "WELL DONE!! YOU SURVIVED"
      puts survived
      break
    end
    #when they guess wrong
  else
    puts "Sorry! The word dosen't contains '#{char}'"
    wrong_try += 1
    #if they lose 
    if (wrong_try == total_chances)
      puts "YOU HANGED!"
      puts hanged
      break #i used this in claculator challenge, it seems like a usful actionable code line
    # catch all loop
    else
      puts "Try another: " + get_placeholder(word, right_guess)
    end
  end

end