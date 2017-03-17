p "Release 0"+"-"*100
def search_array(array,num)
	 array.each_index.select{|i| array[i] == num}
end
an_array = [1,2,3,4,5,6,7,8,9,10]
p search_array(an_array, 5)

p "Release 1"+"-"*100
def fib(num)
	a = [0]

	(num).times do |i|
	 if i==0
	 	a[i] = 0
	 elsif i == 1
	 	a[i] = 1
	 else
	 	a[i] = a[i-1] + a[i-2]
	 end
	end

	return a[0..num]
end

p fib (100)


p "Release 2"+"-"*100
#Pseudocode
def bubble_sort(array)
		a_length = array.length
	#create a loop to do a specific task
	loop do
		#set boolean so that it has an end condition
		sorted = false

	#Look at the first two numbers in array
		#look at all pairs in array and swap if condition is tru
		(a_length - 1).times do |number|
			if array[number] > array[number+1]
				array[number], array[number+1] = array[number+1], array[number]
			#if the numbers are sorted, update sorted to true
			sorted = true
			end
		#end block parameter
		end
		#if end condition is met, end loop
	break if not sorted
	#end the loop do
	end
	#print updated array
	array
	#end method
end

array = [10,7,2,9,5,6,3,8,4,1]
p bubble_sort(array)
#If the second number is less than the first number
#  -swap numbers
#repeat until end of array