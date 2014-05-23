# U3.W7: BONUS Using the SQLite Gem

# I worked on this challenge [with: Yariv Kirschner]

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"


def print_arizona_reps
  puts "AZ REPRESENTATIVES"
  az_reps = $db.execute("SELECT name FROM congress_members WHERE location = 'AZ'")
  az_reps.each { |rep| puts rep }
end

def print_longest_serving_reps(minimum_years)  #sorry guys, oracle needs me, i didn't finish this!
  puts "LONGEST SERVING REPRESENTATIVES"
  puts $db.execute("SELECT name || ' - ' || years_in_congress || ' years ' FROM congress_members WHERE years_in_congress > #{minimum_years}")
end

def print_lowest_grade_level_speakers(grade_level)
  puts "LOWEST GRADE LEVEL SPEAKERS (less than < #{grade_level})"
  puts $db.execute("SELECT name FROM congress_members WHERE grade_current < #{grade_level}")
end

def print_member_states
    puts $db.execute("SELECT name || ' - ' || location FROM congress_members "+
    "WHERE location IN ('NJ', 'NY', 'ME', 'FL', 'AK') order by location")
end

def prepare_stat(state)
  puts "How to stop SQL injection attacks"
  statement = $db.prepare "SELECT name ||' '|| party FROM congress_members where location = :state"
  statement.execute state
  statement.each { |rep| puts rep }
end

LIST_REPS = "SELECT id, name FROM congress_members"
LIST_VOTERS = "select group_concat(voters.first_name|| ' '||last_name, ',') from voters "+
   "JOIN votes on (voters.id = votes.voter_id) "+
   "JOIN congress_members on (votes.politician_id = congress_members.id) " +
   "WHERE congress_members.id = %d"

def print_voter_list
    
    n = 0
  puts "listing of each Politician and the voter that voted for them"
  replist = $db.prepare LIST_REPS
  replist.execute
  replist.each { |s| 
            n = s[0].to_i
            puts s[1]
            voterlist = $db.prepare LIST_VOTERS % [n]
            voterlist.execute
          voterlist.each { |s| puts s }
          puts " "
        }
    
=begin    
    puts $db.execute("SELECT group_concat(voters.first_name|| ' '||last_name, ',') FROM voters "+
                    "JOIN votes on voters.id = votes.voter_id "+
                    "WHERE politician_id = 1")
=end
end

def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end


print_arizona_reps

print_separator

print_longest_serving_reps(35)
# TODO - Print out the number of years served as well as the name of the longest running reps
# output should look like:  Rep. C. W. Bill Young - 41 years

print_separator
print_lowest_grade_level_speakers(8)

print_separator
print_member_states

print_separator
prepare_stat('CA')

print_separator
print_voter_list
# TODO - Need to be able to pass the grade level as an argument, look in schema for "grade_current" column

# TODO - Make a method to print the following states representatives as well:
# (New Jersey, New York, Maine, Florida, and Alaska)


##### BONUS #######
# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.

# TODO (bonus)
# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just 
#    have a similar format)
# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma
#
# * you'll need to do some join statements to complete these last queries!


# REFLECTION- Include your reflection as a comment below.
# How does the sqlite3 gem work?  What is the variable `$db` holding?  
# sqlite3 gem allows Ruby programs to interface with the SQLite3 database engine.  $db holds the database from sqlite3
# 
# Try to use your knowledge of ruby and OO to decipher this as well as h
# ow the `#execute` method works.  Take a stab at explaining the line 
# `$db.execute("SELECT name FROM congress_members WHERE years_in_congress 
#   > #{minimum_years}")`.  Try to explain this as clearly as possible for 
# your fellow students.  
# 
# This takes the tables in $db and calls the function "execute" which executes the sql query written inside
# the parenthesis.
# 
# If you're having trouble, find someone to pair on this explanation with you.



