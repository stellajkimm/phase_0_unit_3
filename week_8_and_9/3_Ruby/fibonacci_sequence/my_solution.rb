# U3.W8-9: 


# I worked on this challenge [by myself].

# 2. Pseudocode

# define a method called is_fibonaci? that takes one parameter num
# if the number is 0, return true,
# otherwise, set variable new_num to 0, first_num to 0 and second_num to 1
# loop through setting new_num equal to the sum of first_num and second_num
# if the new_num is less tha the num provided, make the first_num equal to the second_num
# and the second_num equal to the new_num
# else, break.
# return if new_num is equal to num.

# 3. Initial Solution

def is_fibonacci?(num)
	if num == 0
		true
	else
		new_num = 0
		first_num = 0
		second_num = 1
		loop do
			new_num = first_num + second_num
			if new_num < num
				first_num = second_num
				second_num = new_num
			else
				break
			end
		end
	end
	return new_num == num
end

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

def random_fibonacci
   [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946].sample
end

puts "returns true when a integer is one number of the Fibonacci sequence"
puts is_fibonacci?(random_fibonacci) == true

puts "returns true with a large Fibonacci number"
puts is_fibonacci?(8670007398507948658051921) == true

puts "returns false when it's not in the Fibonacci seqence"
puts is_fibonacci?(random_fibonacci+100) == false
 
puts "returns false on large non-Fibonacci numbers"
puts is_fibonacci?(927372692193078999171) == false



# 5. Reflection 
# I remember at the beginning of Dev Bootcamp, before Phase 0, I was intimidated
# by this exercise and was not able to figure it out.  I am proud to say that I
# figured it out with ease this time around and it did not take a long time.
# this definitely shows a sign of improvement in the past 2 months (WE SHOULD HOPE SO!)