puts "What is the name of the hamster?"
name = gets.chomp
puts "How loud is your hamster on a scale of 1-10?"
volume = gets.chomp
puts "What fur color is  your hamster?"
fur_color = gets.chomp
puts "Is this hamster a good candidate for adoption (True/False)?"
adoption_good = gets.chomp
	if adoption_good == "True"
 		 puts = "Good"
	elsif adoption_good == "False"
  		puts = "Bad"
	else
		puts "Please select an option"
	end

puts "Roughly how old do you think the hamster is?"
age = gets.chomp
	if age.empty?
		age = nil
	else
		age = age.to_i
		puts = age
end

