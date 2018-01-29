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
[1,3,37,9,6,7,8,4].sum will return sum of all elements of this array.


Answer to Question 5: 
PATH              Method   URI                         Controller#Action
    comments_post GET    /posts/:id/comments(.:format) posts#comments
bulk_upload_posts POST   /posts/bulk_upload(.:format)  posts#bulk_upload
            posts GET    /posts(.:format)              posts#index
                  POST   /posts(.:format)              posts#create
         new_post GET    /posts/new(.:format)          posts#new
        edit_post GET    /posts/:id/edit(.:format)     posts#edit
             post GET    /posts/:id(.:format)          posts#show
                  PATCH  /posts/:id(.:format)          posts#update
                  PUT    /posts/:id(.:format)          posts#update
                  DELETE /posts/:id(.:format)          posts#destroy


Answer to Question 6:
User.find(5) will give couldn't find user with id = 5
User.find_by_id(5) will give nil

