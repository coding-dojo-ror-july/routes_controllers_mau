# Assignment: Getting Familiar with Routes and Controllers
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
 When a http GET request to 'http://localhost:3000' is sent, have the 'say' controller's index method handle the response; 
 have it render a text that says 'What do you want me to say???'
 When a http GET request to 'http://localhost:3000/times' is sent, have it tell you how many times you've visited that page. 
 When you first visit that url, it should say 'You visited this url 1 time'. 
 Keep reloading the page to make sure the number goes up.

 # Assignment: Integrating Models with the Controller
You should feel a little bit more comfortable about routes and controller. 
Let's now do a few exercises to make sure you feel comfortable using models with your controllers.

In this exercise, you may need to use "render json". 
For example, if you wanted to render JSON output of all of your products, you could do something like this:

def index
  render json: Product.all
end

With this in mind, please complete the following mini tasks:
 When a http GET request to '/users' is received, have your rails app display, in json format, all of the users that are in your database. 
 Have your users table be composed of simply its id, name, created_at, and updated_at.
 When a http GET request to '/users/new' is received, have it render: a view file with an empty form to create a new user.
 When a http GET request to '/users/1' is received, have it show, in json format, user 1's information.
 When a http GET request to '/users/1/edit' is received, have it render: a view file with a form with user 1's information in the appropriate input field.
 When a http POST request to '/users' is received from the form rendered in '/users/new', have it create a user with the information from the input field. 
 After creating the user, redirect to the '/users' route.
 When a http GET request to '/users/total' is received, have it render the total number of users.

