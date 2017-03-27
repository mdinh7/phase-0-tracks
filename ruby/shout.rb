=begin
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
=end

module Shout
  def yell_lazily(words)
    puts words.swapcase + "?!" + " why now? (´~`) "
  end
end

class Sleepy
	include Shout
end

class MorningBoss
	include Shout
end

sleepy = Sleepy.new
sleepy.yell_lazily("WHY DO I HAVE TO WAKE UP")

morning_boss = MorningBoss.new
morning_boss.yell_lazily("dO i hAvE To dO EvErYthInG")

