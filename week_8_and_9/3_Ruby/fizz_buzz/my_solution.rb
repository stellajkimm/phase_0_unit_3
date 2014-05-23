# U3.W8-9: 


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# define method super_fizzbuzz that takes in an array as a parameter
# create a new array called new_array
# for each element in the array, run through an if statement where
# if the number % 15 is equal to 0, add "FizzBuzz" into the new_array
# if the number % 3 is equal to 0, add "Fizz" into the new_array
# if the number % 5 is equal to 0, add "Buzz" into the new_array
# else put the number in the new_array
# return new_array

# 3. Initial Solution

def super_fizzbuzz(array)
	new_array = []
	array.each do |num| 
		if num % 15 == 0
			new_array << "FizzBuzz"
		elsif num % 3 == 0
			new_array << "Fizz"
		elsif num % 5 == 0
			new_array << "Buzz"
		else 
			new_array << num
		end
	end
	new_array
end



# 4. Refactored Solution






# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

puts "returns 'Fizz' for multiples of 3"
puts super_fizzbuzz([3,6,9]) == ["Fizz", "Fizz", "Fizz"]

puts "returns 'Buzz' for multiples of 5"
puts super_fizzbuzz([5,10,20]) == ["Buzz", "Buzz", "Buzz"]

puts "returns 'FizzBuzz' for multiples of 15"
puts super_fizzbuzz([15,30,45]) == ["FizzBuzz", "FizzBuzz", "FizzBuzz"]

puts "works on [1,2,3]"
puts super_fizzbuzz([1,2,3]) == [1,2,'Fizz']

puts "works on [15, 5, 3, 1]"
puts super_fizzbuzz([15,5,3,1]) == ['FizzBuzz', 'Buzz', 'Fizz', 1]



# 5. Reflection 

# easy challenge. we did something like this in before Phase 0 even started. I love Ruby!