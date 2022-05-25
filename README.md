# Steps taken:
1. Learn Ruby.
2. Learn and install Ruby on Rails (v7), by following tutorials.
3. Create the challenge design.
4. Implement basic rails application (tables, MVC, API roots).
5. Make MVP based on the challenge (Notifications (title, date, description, seen)(received/sent), Admin/Client role).
6. Create a sufficient layout with CSS (import)
7. Refine code.

### Used commands
Only showing the first few that created the tables
* ```rails new NotificationCenter --database=postgresql```
* ```rails generate scaffold notification title:string description:text```
* ```rails generate resource comment notification:references content:text```
* ```rails g devise:install```


# Design choices
### Use of Gems
I have used several gems to help in the project, the most notable is 'devise' for user control and authentication.
I have also added other gems and deleted some along the way, with the as main purpose to learn how to use them.

### Multiple receivers
I have tried another method (further explained in Improvements), got stuck and decided to improvise: https://github.com/MaxLievense/Challenge_Backend_Notification_Center/blob/a63fcfed931834b271577bbd4c63716fd17d0946/app/controllers/notifications_controller.rb#L25
This was required as I could get a multi-form submission to work (and decided to keep JS out of the scope of the challenge).

The disadvantages of this improvisation are:
* Creates a new notification per element in ```email_list```, and as a result, the CRUD operations need to be done per created notifications.
* Duplicate data on the ```description``` and ```title``` in the database.

### Index notifications
To split received and sent, I have created different class-variables:
https://github.com/MaxLievense/Challenge_Backend_Notification_Center/blob/a63fcfed931834b271577bbd4c63716fd17d0946/app/controllers/notifications_controller.rb#L6-L7
Also ordering them by newest on top.

### Reusable code
I have created several partial views that ensure that there is no duplicate could using the ```render``` function.
A good example is:
* ```index.html.erb``` that passes the the index-variable (from above) and calls 
* ```_notification_table.html.erb``` which calls 
* ```_notification.html.erb``` for each notification

And ```show.html.erb``` reuses ```_notification.html.erb``` but also adds the description to it.

### Error handling
I implemented a basic ```flash``` error handler that shows the user information from their (faulty) actions.

https://github.com/MaxLievense/Challenge_Backend_Notification_Center/blob/a63fcfed931834b271577bbd4c63716fd17d0946/app/views/layouts/_flash.html.erb#L2-L7

In hindsight, I should have used a gem for this (e.g. bootstrap).

### Extra's
As I did not have that much time for the challenge, I kept the extras to a minimum.
I did however add ```Comments``` and ```Devise```.
I would have liked to have done more on the challenge and - if given the opportunity of the internship - will use this project as a learning ground to improve on with Rails.

I did start on implementing a ```Mailer``` that would send a message to the user if he/she got a notification, however, did not continue due to it being a gimmick.

# Structure
This is the class diagram of the implemented code (only showing the used columns of the tables):

![Class_diagram](https://user-images.githubusercontent.com/49908115/170211878-c125de1f-1a70-4530-80dc-a217efff9946.png)


# Improvements
### Structure
This is what I wanted to make, splitting the Notifications into 2 parts; the Notification and a list of Receivers. This would be a better structure as the current body (i.e. description) is now duplicated when a mail is sent multiple times to different users, this structure would also allow the Sender to edit the notification for all receivers at the same time.

![Class_diagram_updated](https://user-images.githubusercontent.com/49908115/170213356-692262b2-a914-4170-b6f2-a40a70fe7e2a.png)

### To do
(see the project: https://github.com/MaxLievense/Challenge_Backend_Notification_Center/projects/2 ):
* Make test tiles work (have an issue with foreignkeys)
* Split notifications (see above)
* Better error handling

### Look under-the-hood of Rails with:
* Performance (Querying, variable passing)
* Security
* Microservices
* Deployment
