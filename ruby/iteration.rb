def congratulations
	puts "Congratulations, on your admission to DBC!"
	3.times { yield("Mendel", "Daniel") }
end

congratulations { |name1, name2| puts "Now get ready to do a lot of work #{name1} and #{name2}" }


cats_breed = ["British Shorthair", "Siamese", "Persian", "Maine Coon"]
modified_breed = []


puts "original data:"
p cats_breed

cats_breed.each do |breed|
	modified_breed << breed.upcase
end

puts "After .each call"
p modified_breed


cats_breed = ["British Shorthair", "Siamese", "Persian", "Maine Coon"]

puts "original data:"
p cats_breed

cats_breed.map! do |breed|
	puts breed
	breed.upcase
end

puts "After .map call"
p cats_breed


cat_breed = {
	Tom: "British Shorthair", 
	Jerry: "Siamese", 
	Jane: "Persian", 
	Tim: "Maine Coon"
}

modified_breeds = {

}

cat_breed.each do |name, breed|
	modified_breeds[name] = breed.upcase

end

puts "After .each call"
p modified_breeds


numbers = [ 1, 2, 3, 4, 5, 6, 7, 8 ,9, 10 ]
letters = {
	1 => "A",
	2 => "B",
	3 => "C",
	4 => "D",
	5 => "E",
	6 => "F",
	7 => "G",
	8 => "H",
	9 => "I",
	10 => "J"
}

# A method that iterates through the items, deleting any that meet a certain condition
   def number_delete
   value = yield
   value.slice!(1..5)
   puts "value is: #{value}"
     
 end

 number_delete do
   numbers = [ 1, 2, 3, 4, 5, 6, 7, 8 ,9, 10 ]
 end


# A method that iterates through the items, deleting any that meet a certain condition
   numbers = [ 1, 2, 3, 4, 5, 6, 7, 8 ,9, 10 ]
   numbers.delete_if{|n| n <= 5 }
   p numbers

# A different method that filters a data structure for only items satisfying a certain condition
      def number_delete1
   value = yield
   value
     end

 number_delete1 do
   numbers = [ 1, 2, 3, 4, 5, 6, 7, 8 ,9, 10 ]
   numbers.each { |value| puts value if value.to_f%2==0}
 end


# A method that will remove items from a data structure until the condition in the block evaluates to false,
    letters = {1 => "A",2 => "B",3 => "C",4 => "D",5 => "E",}
    letters.delete_if {|key, value| value != "D" }  
    p letters














=begin
letters = ["a", "b", "c", "d", "e"]
new_letters = []

puts "original data:"
p letters


letters.each do |letter|
	new_letters << letter.next
end

puts "After .each call:"
p new_letters


numbers = {1 => 'one', 2 => 'two', 3 => 'three'}

numbers.each do |digit, word|
	puts "#{digit} is spelled out as #{word}"
end



letters = ["a", "b", "c", "d", "e"]
new_letters = []

puts "original data:"
p letters

modified_letters = letters.map do |letter|
	puts letter
	letter.next
end

puts "After .map call"
p letters
p modified_letters
=end