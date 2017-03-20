# Pseudocode
# Take input from the user
# Take user input
#   - convert into array
# Iterate through array in order to switch first and last name
# Use edited array
# Iterate through array in order to change vowels
# Print joined result


def create_alias
loop do
  vowels = ["a", "e", "i", "o", "u"]
  real_names = []
  puts "What is your name?"
  real_name = gets.chomp
  	real_names << real_name
  	if real_name == "quit"
  			break
  		end
   name = real_name.split(' ')
	name[0], name[1] = name[1], name[0]
	name_new = name[0].chars + name[1].chars
  name_alias = name_new.map do |char|
    if vowels.include?(char)
      vowels.rotate(1)[vowels.index(char)]
    else
      char
    end
   end
   p name_alias.join(" ")
   # p real_names "is"  name_alias
  end 
end



create_alias


