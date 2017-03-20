# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<swapcase>
# => “InVeStIgAtIoN”

# "zom".<???>
# => “zoom”

# "enhance".<???>
# => "    enhance    "

# "Stop! You’re under arrest!".<upcase>
# => "STOP! YOU’RE UNDER ARREST!"

# "the usual".<???>
#=> "the usual suspects"

# " suspects".<???>
# => "the usual suspects"

# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

# "How many times does the letter 'a' appear in this string?".<???>
# => 4

p "iNvEsTiGaTiOn".swapcase
p "zom".chomp("o")
p "enhance".center(20)
p "Stop! You’re under arrest!".upcase
p "the usual".insert(9, ' suspects')
p " suspects".insert(0, 'the usual')
p "The case of the disappearing last letter".chop
p "The mystery of the missing first letter".tr('T','')
p "Elementary,    my   dear        Watson!".center(10)
p "z".ord
p "How many times does the letter 'a' appear in this string?".count"a"