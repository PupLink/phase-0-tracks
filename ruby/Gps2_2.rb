# Method to create a list.
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Define a method
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: Hash

def grocery_list(groceries)
	list ={}
		groceries.split(" ").each {|item| list[item] = 1}
	 list 
end

our_list = grocery_list("carrots apples pizza cereal")



# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: define method that pushes items into list hash.
# output: 

def add_item(list, new_item)
	list[new_item] = 1
end

add_item(our_list, "bananas")
p our_list

# Method to remove an item from the list
# input: delete item. 
# steps: define method that removes item from list.
# output: 

def remove_item(list, delete_item)
	list.delete(delete_item)
end
remove_item(our_list, "carrots")
p our_list

# Method to update the quantity of an item
# input: Three inputs:list,item,quantity
# steps: define a method that uses three parameters to update a quantity.
# output:

#this step can also take the place of add new item

def update_quantity(list, updated_item, quantity=1)
	list[updated_item] = quantity
end
update_quantity(our_list, "bananas")
p our_list
# Method to print a list and make it look pretty
# input: 
# steps: define a method that iterates through a hash using .each.
# output: nicely printed list.

def print_list(list)
	list.each {|item, quantity| puts "you have #{quantity} #{item}."}
end
print_list(our_list)


#Release 4: Reflect

#On your own, add a commented reflection section to your gps2_2.rb file. Answer the following questions in your reflection:

# What did you learn about pseudocode from working on this challenge?
	#I learned that taking things broad is not tbad thing, i dont have to detail every little thing just to understand how to do it anymore...

# What are the tradeoffs of using arrays and hashes for this challenge?
	#Hashes are good for storing strings and arrays are good for quantities and more numeric things when relating to hash strings...

# What does a method return?
	#it returns set varriable funtions, they alter corsponding code within the program.

# What kind of things can you pass into methods as arguments?
	#anything you want, Changes to description, items in a list, values even...

# How can you pass information between methods?
	#by using the name of the method in other pieces of code

# What concepts were solidified in this challenge, and what concepts are still confusing?
	#I honestly found explainig how functions work as a navigator is really challenging, somthing so simple explained in context sing the proper vocabulary is not always the easiest thing to do... 

	