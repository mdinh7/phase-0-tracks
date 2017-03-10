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
	alphabet = "abcdefghijklmnopqrstuvwxyz".reverse!
	while index < input.length
		input.index(input)== alphabet.index("abcdefghijklmnopqrstuvwxyz")
		if input[index] == "z"
			p alphabet[25]
		else
			p [index].next
		end
		index += 1
	end
end



def decrypt
	puts "What is your encrypted password?"
	input = gets.chomp
	index = 0
	alphabet = "zyxwvutsrqponmlkjihgfedcba".reverse!
	while index < input.length
		input.index(input) == alphabet.index(alphabet)
		p input[index].next
		index += 1
	end
end

decrypt(encrypt("swordfish"))

puts "Would you like to decrypt or encrypt?"
answer = gets.chomp
if answer == "decrypt"
	decrypt
elsif answer == "encrypt"
	encrypt
end


