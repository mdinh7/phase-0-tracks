module Shout
  # we'll put some methods here soon, but this code is fine for now!
   def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words.upcase + "!" + "(o w o)"
  end

end

p Shout.yell_happily("potato")
p Shout.yell_angrily("potato")

