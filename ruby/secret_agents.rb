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


def encrypt(pass)
	index = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	while index < pass.length
		letter = pass[index]
		number = alphabet.index(letter)
		if pass[index] == "z"
			p "a"
		else
			p alphabet[number + 1]
		end
		index += 1
	end
end

def decrypt(pass)
	index = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	while index < pass.length
		letter = pass[index]
		number = alphabet.index(letter)
		p alphabet[number - 1]
		index += 1
	end
end

# decrypt(encrypt("swordfish"))
# returns error: undefined method 'length' for nil:NilClass (noMethodError)
# essentially can't read the encrypted swordfish in the same line, and decrypt it.


puts "Would you like to decrypt or encrypt?"
answer = gets.chomp
if answer == "decrypt"
	puts "What is your encrypted password?"
	input = gets.chomp
	decrypt(input)
elsif answer == "encrypt"
	puts "What is your password?"
	input = gets.chomp
	encrypt(input)
end


