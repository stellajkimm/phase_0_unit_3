# U3.W8-9: Numbers to English Words


# I worked on this challenge [by myself ].

# 2. Pseudocode



# 3. Initial Solution


def in_words(num)
	numbers = 
		{0 => "zero",
		1 => "one",
		2 => "two",
		3 => "three",
		4 => "four",
		5 => "five",
		6 => "six",
		7 => "seven",
		8 => "eight",
		9 => "nine",
		10 => "ten",
		11 => "eleven",
		12 => "twelve",
		13 => "thirteen",
		15 => "fifteen",
		20 => "twenty",
		30 => "thirty",
		50 => "fifty"}

	num_array = num.to_s.split(//).map(&:to_i)
	case num_array.length
	when 1
		numbers[num_array[0]]
	when 2
		if num_array[1] == 0
			if numbers[num].nil?
				numbers[num_array[0]] + "ty"
			else numbers[num]
			end
		else
			case num_array[0]
			when 1
				if numbers[num].nil?
					numbers[num_array[1]] + "teen"
				else numbers[num]
				end
			when 2
				numbers[20] + " " + numbers[num_array[1]]
			when 3
				numbers[30] + " " + numbers[num_array[1]]
			when 5
				numbers[50] + " " + numbers[num_array[1]]
			else numbers[num_array[0]] + "ty " + numbers[num_array[1]]
			end
		end
	else
		"one hundred"
	end
end

# 4. Refactored Solution






# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
puts "1"
puts in_words(1) == "one"

puts "15"
puts in_words(15) == "fifteen"

puts "16"
puts in_words(16) == "sixteen"

puts "27"
puts in_words(27) == "twenty seven"

puts "30"
puts in_words(30) == "thirty"

puts "32"
puts in_words(32) == "thirty two"

puts "53"
puts in_words(53) == "fifty three"

puts "60"
puts in_words(60) == "sixty"

puts "77"
puts in_words(77) == "seventy seven"

puts "99"
puts in_words(99) == "ninety nine"

puts "100"
puts in_words(100) == "one hundred"



# 5. Reflection 

# Not sure if there could be an easier way to write this.  Probably.  I mean, there will always be
# a better way to write something.  But it works!  Great exercise.  I would love to see other people's
# answers to see a better way of writing this.