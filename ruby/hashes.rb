#Pseudocode
#Ask user for data
#Convert data into correct data type
#Store data into hash under appropriate key
#Ask if key update is needed
#Update value if updated
#Break if none is needed
#Print hash
#Exit


puts "Input client name"
client = gets.chomp
puts "Client Age"
age = gets.to_i
puts "Number of Children"
children = gets.to_i
puts "Theme"
theme = gets.chomp
puts "Pets"
pets = gets.chomp

client_data = {
	:client_name => client,
	:client_age => age,
	:children_number => children,
	:house_theme => theme,
	:client_pets => pets,
}


puts "Would you like to change anything?"
input = gets.chomp
	if input == "none"
		p "Okay!"
	else
		puts "What would you like to change?"
		change = gets.chomp
		puts "What is the new value?"
		new_value = gets.chomp
		if change == "name"
			client_data[:client_name] = new_value
		elsif change == "age"
			client_data[:client_age] = new_value
		elsif change == "children"
			client_data[:children_number] = new_value
		elsif change == "theme"
			client_data[:house_theme] = new_value 
		elsif change == "pets"
			client_data[:client_pets] = new_value
		end
					
	end



p client_data