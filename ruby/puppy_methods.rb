#Partner Omid Fakiri


class Puppy

  def initialize
  	puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(bark)
  	bark.times do p "Woof!" end
  end

  def roll_over
  	puts "rolls over"
  end

  def dog_years(age)
  	if age < 0
  			puts("Age must be positive number.")
		elsif age == 1
			dog = age * 15
		elsif age == 2
  			dog = age * 12
		else
			dog = 24 + (age - 2)*4
		end
	puts "The dog's age in dog's years is, #{dog}."
  end

  def trick(spin, treat)
  	puts "Spin around #{spin} times"
  	spin.times do p "spin" end
  	puts "Good boy, here's your #{treat}."
  end
end


class News

	def initialize
		puts "On tonight's news..."
	end

	def local(time, stories)
		puts "These are tonight's top #{stories} stories, at #{time}"
	end

	def emergency(warning)
		if warning.include?("!")
			puts warning.upcase
		else
			puts warning
		end
	end

end

puppy = Puppy.new
puts puppy.fetch("ball")
puts puppy.speak(5)
puts puppy.roll_over
puts puppy.dog_years(24)
puts puppy.trick(5, "bone")

index = 0
while index < 50
	news = News.new
	archive = []
	archive << news
	archive.each do 
		news.local(8,4)
		news.emergency("fire!")
		end
	index += 1
end

archive

