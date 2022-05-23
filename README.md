### Used commands
1. ```rails new NotificationCenter --database=postgresql```
2. ```rails generate scaffold notification title:string description:text```
3. ```rails generate resource comment notification:references content:text```
4. ```rails g devise:install```