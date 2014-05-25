# U3.W8-9: Reverse Words


# I worked on this challenge [by myself].

# 2. Pseudocode

# define a method called reverse_words that takes in one parametere sentence
# make an array sentence_array that splits the sentence by each space
# take each element and reverse the string
# join the elements with a space inbetween.


# 3. Initial Solution

def reverse_words(sentence)
	sentence_array = sentence.split(' ')
	sentence_array.each { |word| word.reverse! }
	sentence_array.join(" ")
end

# 4. Refactored Solution






# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def random_word(length = 5)
  rand(36**length).to_s(36)
end

p "does nothing to an empty string"
p reverse_words("") == ""

p "reverses a single word"
word = random_word
p reverse_words(word) == word.reverse

p "reverses two words"
word1 = random_word
word2 = random_word
p reverse_words("#{word1} #{word2}") == "#{word1.reverse} #{word2.reverse}"

p "reverses a sentence"
p reverse_words("Ich bin ein Berliner") == "hcI nib nie renilreB"


# 5. Reflection 
# this was an easy challenge.  I got it right away except I forgot the exclamation mark at the
# end of reverse on the first try.