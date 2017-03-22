class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(bark)
  	bark.times puts "Woof!"
  end
end

puppy = Puppy.new
puts puppy.fetch("bone")