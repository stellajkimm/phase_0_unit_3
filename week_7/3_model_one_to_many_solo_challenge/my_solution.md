# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)

## Release 0: Users Fields
<!-- Identify the fields Twitter collects data for -->
+ user_name
+ user_id
+ bio
+ location
+ website
+ created_at
+ updated_at

## Release 1: Tweet Fields
<!-- Identify the fields Twitter uses to represent/display a tweet. What are you required or allowed to enter? -->
+ user_id
+ tweet_text
+ number_of_char
+ created_at

## Release 2: Explain the relationship
The relationship between `users` and `tweets` is: 
<!-- because... -->
 one to many because there is only one user but many tweets from the user

## Release 3: Schema Design
https://github.com/stellajkimm/phase_0_unit_3/blob/master/week_7/imgs/solo_schema.jpg

## Release 4: SQL Statements
<!-- Include your SQL Statements. How can you make markdown files show blocks of code? -->
+ all the tweets for a certain user id
    SELECT tweet_text
      FROM tweets JOIN users ON users.id = user_id
      WHERE users.id = 34

+ the tweets for a certain user id that were made after last Wednesday (whenever last Wednesday was for you)
    SELECT tweet_text
      FROM tweets JOIN users ON users.id = user_id
      WHERE tweets.created_at >= #5/7/2014#

+ all the tweets associated with a given user's twitter handle
    SELECT tweet_text
      FROM tweets JOIN users ON users.id = user_id
      WHERE tweet_text like '%user_name%'

+ the twitter handle associated with a given tweet id
 hmm... this one is a toughie.

## Release 5: Reflection
<!-- Be sure to add your reflection here!!! -->
This challenge is difficult because I have no idea how to check if my answers are actually right or not.  I am really confused how to use SQL to actually check my work.  In Ruby, you can always use IRB to check your work, but in this case, I actually don't know what's going on.