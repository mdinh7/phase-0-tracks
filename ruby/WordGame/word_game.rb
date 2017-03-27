class WordGame
	attr_accessor :word
	attr_accessor :guess_count
	attr_accessor :letters
	attr_accessor :letter
	attr_accessor :guessed
	attr_accessor :progress
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

	def progress_checker
		@progress = ["_ " * letters.length]
		puts progress
	end

	def check_letter(letter)
		if letters.include? letter
			@guessed << letter
			p @guessed
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
	if game.win == true
		p game.guessed
		game.guess_count += 1
		p "Congratulations! (o w o)"
		break
	else
		puts "NOPE! (u w u)"
		game.guess_count += 1
		puts "You have" + (game.word.length - game.guess_count).to_s + " tries left"
	end
end