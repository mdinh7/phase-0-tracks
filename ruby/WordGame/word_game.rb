class WordGame
	attr_accessor :word
	attr_accessor :guess_count
	attr_accessor :letters
	attr_accessor :letter
	attr_accessor :guessed
	attr_accessor :win

	def initialize
		@word = nil
		@guess_count = 0
		@letters = []
		@letter = nil
		@guessed = ""
		@progress = []
	end

	def word_splitter(word)
		@letters = word.split(//)
	end

	def check_letter(letter)
		if letters.include? letter
			@guessed << letter
		end
	end

	def check_win(letters, guessed)
		@win = true
  		letters.each do |l|
    	if guessed.include? l
      	print l
   		else
      	print '_ '
      	@win = false
    	end
  	end

	end

end


puts "Get a friend!, Guess a word!"
game = WordGame.new

puts "Player 1, what is your word?"
input = gets.chomp
game.word = input
game.word_splitter(input)

while game.guess_count <= input.length
	puts "Player 2, what is your letter?"
	input2 = gets.chomp
	game.letter = input2
	game.check_letter(input2)
	game.check_win(game.letters, game.guessed)
	if  game.win == true
		game.guess_count += 1
		puts ""
		puts "Congratulations! You did it in " + (game.guess_count).to_s + " tries (o w o)"
		break
	elsif  game.guessed.to_s.include?(input2) && game.win == true
		game.guess_count += 0
		puts ""
		puts "You have " + (input.length - game.guess_count).to_s + " tries left"
	else 
		game.guess_count += 1
		puts ""
		puts "Keep trying! (u w u)"
		puts "You have " + (input.length - game.guess_count).to_s + " tries left"
	end
end