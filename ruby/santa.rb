class Santa
	attr_accessor :gender
	attr_accessor :age

	def initialize(gender, ethnicity)
	  	puts "Initializing Santa instance..."
	  	@gender = gender
	  	@ethnicity = ethnicity
	  	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	  	@age = 0
	  	@new_age = []
	  	@santas_newer = []
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!" 
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end

	def celebrate_birthday
		@age = @age + 1
	end

	def get_mad_at(reindeer)
		deleted = @reindeer_ranking.index(reindeer)
		@reindeer_ranking.delete(deleted)
		@reindeer_ranking << reindeer
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end

end

santa = Santa.new("female", "prefer not to say")
puts santa.speak
puts santa.eat_milk_and_cookies("Chocolate Chip")
puts santa.get_mad_at("Dancer")

def santa_creator(num)
		@new_age = []
	  	@santas_newer = []
		genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
		ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
		num.times do |n|
		@santas_newer << Santa.new(genders.shuffle, ethnicities.shuffle)
		@new_age << rand(0..140)
		end
end

santa_creator(20)

santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
ethnicities.length.times do |r|
	santas << Santa.new(genders[r], ethnicities[r])
end


