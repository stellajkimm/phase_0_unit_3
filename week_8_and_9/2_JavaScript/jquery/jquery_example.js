$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'pink'});
 
//RELEASE 1:
  //Add code here to select elements of the DOM 

bodyElement = $('body');
 
// //RELEASE 2: 
//   // Add code here to modify the css and html of DOM elements
 
$('h1').css({'color': 'blue', 'border': '1px solid black', 'visibility': 'visible'});
$('.mascot h1').html("Woodchucks");

// //RELEASE 3: Event Listener
//   // Add the code for the event listener here 
 
   $('img').on('mouseenter', function(e){
     e.preventDefault()
    $(this).attr('src', 'http://www.green-wood.com/wp-content/uploads/2012/07/woodchuck.jpg')
  })

    $('img').on('mouseleave', function(e){
     e.preventDefault()
    $(this).attr('src', 'dbc_logo.jpg')
  })

//RELEASE 4 : Experiment on your own

$( 'img' ).click(function() {
  $( 'img' ).animate({
    opacity: 0.25,
    left: "+=50",
    height: "toggle"
  }, 5000, function() {
    // Animation complete.
  });
});
 
 
 
 
}) // end of the document.ready function: do not remove or write DOM manipulation below this.
