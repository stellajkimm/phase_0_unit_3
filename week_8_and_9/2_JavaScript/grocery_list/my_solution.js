// U3.W8-9: 


// I worked on this challenge [by myself].


// User Stories (As many as you want. Delete the statements you don't need)
// As a user, I want to be able to add an item 
// As a user, I want to be able to puts all items on list
// As a user, I want to be able to physically remove an item
// As a user, I want to be able to swipe it all clean 
// As a user, I want to be able to change amount of items
 
// 2. Pseudocode



// 3. Initial Solution

var groceryList = {};

groceryList.list = {};

groceryList.addItem = function (item, num) {
	groceryList.list[item] = num;
};

groceryList.removeItem = function (item) {
	delete groceryList.list[item];
};

groceryList.clearList = function () {
	groceryList.list = {};
};

groceryList.changeAmount = function (item, num) {
	groceryList.list[item] = num;
};

groceryList.printList = function () {
	console.log(groceryList.list);
};

// 4. Refactored Solution



// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

groceryList.addItem("banana", 5);
groceryList.addItem("apple", 6);
groceryList.addItem("eggs", 1);
console.log(groceryList.list);

groceryList.removeItem("banana");
console.log(groceryList.list);

groceryList.changeAmount("apples", 2);
groceryList.printList();
groceryList.clearList();
groceryList.printList();


// 5. Reflection 

// I had a little trouble with the printList and clearList function because I wanted to remove
// and print only the items and not the function.  I tutored with Johnny Wu and he told me I was
// making an object literal so the way I could do it is if I add a hash inside the object literal
// and work off that.  This worked!