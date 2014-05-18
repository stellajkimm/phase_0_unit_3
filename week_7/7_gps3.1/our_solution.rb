# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1. Stella Kim
# 2. Ryan Stack
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to be able to add an item 
# As a user, I want to be able to puts all items on list
# As a user, I want to be able to physically remove an item
# As a user, I want to be able to swipe it all clean 
# As a user, I want to be able to change amount of items
 
# Pseudocode
# create a class called Grocery_items 
# Initialize class with parameters item and amount 
# Use an accessor method.  
# Create a class called Grocery_list
# Initialize the class with a splat argument, and set a local avriable @ items equal to array
# Define a method that adds a grocery item object to our @variable list
# Define a method that iterates through the array and puts out each item
# Define a method that sets the grocery list to an empty array
# Define a method that removes grocery item from the list
# Define a method that changes the amount of an item
 
 
# Your fabulous code goes here....

class Grocery_items
    attr_accessor :item, :amount
    def initialize(item, amount)
        @item = item
        @amount = amount
    end
end


class Grocery_list 
    def initialize(*items)
        @items = items 
    end
    
    def add_item(item)
        @items << item
    end
    
    def remove_item(item)
        @items.delete(item)
    end
    
    def clear_list
        @items = []
    end 
    
    def change_amount(item, amount)
        @items.detect(item).amount = amount 
    end
    
    def print_list 
        @items.each {|item| puts "#{item}: #{item.amount}"}
    end
    
end

    

# DRIVER CODE GOES HERE. 

banana = Grocery_items.new("banana", 5)
apple = Grocery_items.new("apple", 6)
eggs = Grocery_items.new("eggs", 1)

banana.amount = 6
puts banana.amount == 6

my_list = Grocery_list.new(banana, apple)


# Reflection
# This challenge was similar to the Playlist challenge so it was easier for me to think in my head.
# My partner had done the Pez challenge so he didn't get this experience as quickly, although we 
# worked very well together.  He is definitely a little further ahead when it comes to Ruby knowledge
# so he helped me out a lot.  Overall, this was a good challenge.








 