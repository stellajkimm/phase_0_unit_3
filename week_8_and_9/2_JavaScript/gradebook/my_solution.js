/*
U3.W8-9: Gradebook from Names and Scores

You will work with the following two variables.  The first, students, holds the names of four students.  
The second, scores, holds groups of test scores.  The relative positions of elements within the two 
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

I worked on this challenge [with: Ken M.]

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]


// __________________________________________
// Write your code below.

function average(numList) {
    totalSum = 0;
    for (var i = 0; i < numList.length; i++) {
    totalSum += numList[i];
    }
    return totalSum / numList.length
}

var gradebook = {}


gradebook.Joseph = {}
gradebook.Susan = {}
gradebook.William = {}
gradebook.Elizabeth = {}

gradebook.Joseph.testScores = scores[0]
gradebook.Susan.testScores = scores[1]
gradebook.William.testScores = scores[2]
gradebook.Elizabeth.testScores = scores[3]

gradebook.addScore = function (student, score) {
    gradebook[student]["testScores"].push(score);

}

gradebook.getAverage = function (student) {
    return average(gradebook[student].testScores);
}

// __________________________________________
// Refactored Solution




// __________________________________________
// Reflect


// This is a fairly easy challenge.  I am having trouble understanding when to put a semi-colon
// in javascript.  Sublime tells me that I am missing semi-colons but when I run it in node, it is
// fine.  HMmmmMMmm.  But then I found this website and it is a little more clear: http://www.codecademy.com/blog/78-your-guide-to-semicolons-in-javascript
// 






// __________________________________________
// Driver Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "1. "
)

assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "2. "
)

assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "3. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "4. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "5. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "6. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "7. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Jospeh'.",
  "9. "
)