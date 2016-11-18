password = "password"

	index = 0
    while index < password.length
        password[index] = password[index].next!
        index += 1

    end

#decryptioon


password = gets.chomp

	index = 0
    while index < password.length
        password[index] = password[index -1]
        index += 1

    end
