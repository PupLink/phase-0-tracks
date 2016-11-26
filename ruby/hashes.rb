#make a hash of data structure for the clients information
puts "Thank you for choosing Steel Industries..."

clients = {}

#get the clients name?
puts "What is your name?" 
client_name = gets.chomp
clients[client_name] = {}

#how old is the client? Make sure it goes under the same name in the hash.
puts "What is your age?"
client_age = gets.chomp.to_i
clients[client_name][:age] = client_age

#does the client have any kids? make sure an intiger is being asked for.
puts "How many kids do you have?"
clients_kids = gets.chomp.to_i
clients[client_name][:kids] = []
if clients_kids > 0
	while clients_kids > 0
		puts "What are your kids name?"
		clients[client_name][:kids] << gets.chomp
		clients_kids -= 1
	end
end

#what docor theme do they have in mind?
puts "do you have your decor in mind?"
client_decor = gets.chomp
clients[client_name][:decor_theme] = client_decor
#print and organize thezz
p clients