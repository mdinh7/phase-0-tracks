=begin
Encrypt:
Ask user for password
Store password as variable
Loop through the string
Change each letter to next one

Decrypt:
Ask user for encrypted password
Store encrypted password as variable
Create variable called alphabet, value is alphabet as a string
Reverse alphabet
Loop through the string
Change each letter to next one

=end

def encrypt
	puts "What is your password?"
	input = gets.chomp
	index = 0
	while index < input.length
		input[index] = input[index].next
		p input[index]
		index += 1
	end
end

encrypt
