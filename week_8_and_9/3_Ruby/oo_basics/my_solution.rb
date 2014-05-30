# U3.W8-9: OO Basics: Student


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode



# 3. Initial Solution

class Student
  attr_accessor :scores, :first_name, :average

  def initialize(scores, first_name)   #Use named arguments!
    @scores = scores
    @first_name = first_name
  end

  def average
  	sum = 0
  	@average = @scores.inject{ |sum, x| sum + x} / @scores.length
  end

  def letter_grade
  	if @average >= 90
  		"A"
  	elsif @average >= 80
  		"B"
  	elsif @average >= 70
  		"C"
  	elsif @average >= 60
  		"D"
  	else
  		"F"
  	end
  end
end

def linear_search(array, first_name) ## DID NOT FINISH THIS YET!
	array.index(first_name)
end


Alex = Student.new([100,100,100,0,100], "Alex")
Brian = Student.new([100,90,80,70,60], "Brian")
Chris = Student.new([92,97,54,38,100], "Chris")
David = Student.new([100,98,92,99,93], "David")
Eric = Student.new([79,69,89,99,100], "Eric")

students = [Alex, Brian, Chris, David, Eric]
# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# Tests for release 0:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Tests for release 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Tests for release 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1





# 5. Reflection 