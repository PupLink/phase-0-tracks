# Method to create a list
# "carrots apples cereal pizza"
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# output: [what data type goes here, array or hash?]
  
def grocery_list(items)
  list = {}
  items.split(" ").each {|x| list[x] = 1}
  list
end

our_list = grocery_list("carrots apples cereal pizza") 

# input: item name and optional quantity
def add_item(list, new_item)
  list[new_item] = 1
end

add_item(our_list, "waffles")
p our_list

# Method to remove an item from the list
def del_item(list, item_to_del)
  list.delete(item_to_del)
end

del_item(our_list, "pizza")
p our_list


# Method to update the quantity of an item
def update_quant(list, item, new_quantity)
  list[item] = new_quantity
end

update_quant(our_list, "waffles", 3)
p our_list


# Method to print a list and make it look pretty

#get a new grocery list

our_list = grocery_list("Lemonade Tomatoes Onions Ice_Cream")
p our_list

update_quant(our_list, "Lemonade", 2)
update_quant(our_list, "Tomatoes", 3)
update_quant(our_list, "Ice_Cream", 4)


del_item(our_list, "Lemonade")


update_quant(our_list, "Ice_Cream", 1)
 p our_list


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
	#I really Hated the way most things were explained this week, for somthing as important as arrays and hashes i feel this week could have been a little more friendly with information, rather than making people struggle with online research... 
	#i know it is vital to have search and "do it yourself" skills but man this was the hardest most challengin and frustrating week... especally with thanks giving the same week...

	