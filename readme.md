Assignment: Getting Familiar with Routes and Controllers
Before we go more in depth about views and other concepts in the rails framework, 
let's do a few exercises to make sure that you're feeling comfortable with Rail's routes and controllers. 
For these exercises, you will not be using any view file but will simply use "render text" directly in the controller. 

The purpose of this assignment is to get you comfortable using routes, controllers, sessions, flash, 
as well as get comfortable transferring what you learned in the previous chapter about models and use them together with the new concepts you've just learned.

Please complete the following:
 When a http GET request to 'http://localhost:3000/hello' is sent, have it display a simple text that says 'Hello CodingDojo!'
 When a http GET request to 'http://localhost:3000/say/hello' is sent, have it display a simple text that says 'Saying Hello!'
 When a http GET request to 'http;//localhost:3000/say/hello/joe' is sent, have it display a simple text that says 'Saying Hello Joe!'
 When a http GET request to 'http;//localhost:3000/say/hello/michael' is sent, have it redirect to a url of 'say/hello/joe'
 When a http GET request to 'http://localhost:3000' is sent, have the 'say' controller's index method handle the response; have it render a text that says 'What do you want me to say???'
 When a http GET request to 'http://localhost:3000/times' is sent, have it tell you how many times you've visited that page. When you first visit that url, it should say 'You visited this url 1 time'. Keep reloading the page to make sure the number goes up.