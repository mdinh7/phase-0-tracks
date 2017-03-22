class Puppy

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

end

puppy = Puppy.new
puts puppy.fetch("ball")
puts puppy.speak(5)
puts puppy.roll_over