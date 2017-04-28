# create method that takes arr of int to search for
# takes two args, one arr, one int and return int(index)

arr = [56, 23, 1, 678, 2]

def search_array(arr, int)
	i = 0
	result = nil
	arr.each do |x|
		if x == int
			result = i
		end
		i += 1
	end
	result
end


p search_array(arr, 678)



arr = [56, 23, 1, 678, 2]

def search_array(arr, int)
	result = nil
	x = 0
	arr.length.to_i.times do 
		if arr[x] == int
			result = x
		end
		x += 1
	end
    result
end


p search_array(arr, 1)


# method that takes a num and returns an arr
# loop based on args 
# sum two numbers and push nums to the end of the arr

def fib(num)
	arr_2 = [0,1]
	num -= 2
	num.times do
		new_num = arr_2[-1] + arr_2[-2] 
		arr_2.push(new_num)
	end
	arr_2
end

p fib(100)



arr_3 = [34,56,98,1212,90,0, 23479823, 389, 2, 4.5 ,1, 45]



# puts arr[x]
# puts arr[y]

def bubble_sort(arr)
	counter = arr.length 
	while counter > 0
		x = -1
		y = -2
		num_1 = arr.length-1 
		num_1.times  do 
			if arr[x] < arr[y]
				x1 = arr[x] 
				y1 = arr[y]
				arr[x] = y1
				arr[y] = x1
			end

			x -= 1
			y -= 1
		end
		counter -= 1
	end
	arr
end

p bubble_sort(arr_3)
