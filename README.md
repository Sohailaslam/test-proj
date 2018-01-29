# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
* 
ANSWERS:
Answer to Question 1:

First of all it depends on current_user. If current_user is not present, it will give an error. otherwise
it will move on and will update only permitted parameters(first_name, last_name, email) and will give a message on server log regarding one unpermitted parameter (is_admin). After update it will redirect to account url.


Answer to Question 2:
Whenever we build a web system, we define and come up with different resources which we expose to outside world for 
having a look and making changes as well. For example in a school management system, student could be a resource. instructor could be resources and so on. Now, in web for every resource we have a unique "address" called URI. that specific resource can be accessed using this URI. 
Now we users can access these resources and modify them via specifically defined methods like GET, PUT, POST, DELETE etc. GET, PUT, POST and DELETE are mapped to create, read, update and delete options. 

When we build an API for mobile devices, same architecture and priniciples are used. Data is made available via API in the form of endpoints and mobile applications can access this data by requesting it via GET, PUT, POST and DELETE methods.

Answer to Question 3:
Redirect_to takes us to a different URI in the same app or even a different website than what was displayed before. (It makes a complete new request to the server).

Render may be used in different scenarios for dispalying/sharing data from same or different controller. It doesn't send a new request to browser and instead displays preloaded data. 

Thus in redirect_to it is necessary for whole page to load but in render/ a partial area of webpage may reload as well.


Answer to Question 4: 









