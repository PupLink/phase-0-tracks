def Fib(int)
	int.times.each_with_object([0,1]) { |num, obj| obj << obj[-2] + obj[-1] }
end
p Fib(100)

# Bubble sort- a simple sorting algorithm that repeatedly steps through the list to be sorted
# Vidual aid- https://en.wikipedia.org/wiki/Bubble_sort
# I ran through this before, I was excited to help others in this 
# Pairing session if feels good to understand a concept for once, makes it feel more rewarding.



# make a method name is bubble

def Bubble_Sort(list)
	# make a loop, 'until' true
	sorted = false
	until sorted
		sorted = true
    # set a varibale 'i' for intiger
    for i in 0..(list.length - 2)
    # make 'i' loop sort in a an 'if' loop
    if list[i] > list[i + 1]
    # close loop
    sorted = false
    list[i], list[i + 1] = list[i + 1], list[i]
end
end
end
  # return list as product
  return list
end
# implement algarithm 
p Bubble_Sort([1, 223, 4, 92, 3, 338, 23, 4534])

