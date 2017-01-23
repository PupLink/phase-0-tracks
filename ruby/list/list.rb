class List

	def initiate
		list
	end
	def get_items
		list = ["do the dishes", "mow the lawn"]
	end 
	def add_item(item)
		list << [item]
	end
	def delete_item(item)
		list.delete(item)
	end
	def get_item(item)
		list.select {item}
	end
end 

# i dont know how to fix my name error :(