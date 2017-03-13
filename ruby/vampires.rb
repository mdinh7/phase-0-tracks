puts "How many employees do you need to process?"
employees = gets.chomp.to_i

until employees == 0
	puts "What is your name?"
	name = gets.chomp
	puts "How old are you?"
	age = gets.chomp.to_i
	puts "What year were you born?"
	year = gets.chomp.to_i
	puts "We serve garlic bread, should we order some for you?"
	bread = gets.chomp
	puts "Would you like to enroll in the company's health insurance?"
	insurance = gets.chomp

	if  2016 - year.to_i == age || 2017 - year.to_i == age
		bread = "Yes" || insurance = "Yes"
		puts "Probably not a vampire"
	elsif 2016 - year.to_i != age || 2017 - year.to_i != age
		bread = "No" || insurance = "No"
		puts "Probably a vampire"
	elsif 2016 - year.to_i != age || 2017 - year.to_i != age
		bread = "No" && insurance = "No"
		puts "Almost certainly a vampire"
	elsif name = "Drake Cula" || name = "Tu Fang"
		puts "Definitely a vampire"
	else
		puts "Results inconclusive"
	end
end
	