
def create_alias
  vowels = ["a", "e", "i", "o", "u"]
  puts "What is your name?"
  real_name = gets.chomp
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
   
   name_alias.join(" ")
 
end

create_alias


