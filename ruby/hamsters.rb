puts "What is the name of the hamster?"
name = gets.chomp
name = name.to_s
puts "How loud is your hamster on a scale of 1-10?"
volume = gets.chomp
volume = volume.to_i
puts "What fur color is  your hamster?"
fur_color = gets.chomp
fur_color = fur_color.to_s
puts "Is this hamster a good candidate for adoption (True/False)?"
adoption_good = gets.chomp
	if adoption_good == "True"
 		ready = "Good"
	elsif adoption_good == "False"
  		ready = "Bad"
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

puts "Hamster Name: #{name} "
puts "Your Hamster is #{volume} /10 "
puts "Your Hamster's fur color is #{fur_color}"
	if ready == "Good"
		puts "Good for adoption"
	else
		puts "Not ready for adoption"
	end
puts "Your Hamster's age is #{age}"