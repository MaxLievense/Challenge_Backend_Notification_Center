# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: "henk@test.com", password: "test123", password_confirmation:"test123", is_admin:true)
User.create(email: "piet@test.com", password: "test123", password_confirmation:"test123")
User.create(email: "john@test.com", password: "test123", password_confirmation:"test123")
User.create(email: "kyle@test.com", password: "test123", password_confirmation:"test123")
User.create(email: "siri@test.com", password: "test123", password_confirmation:"test123")
User.create(email: "sara@test.com", password: "test123", password_confirmation:"test123")
User.create(email: "iris@test.com", password: "test123", password_confirmation:"test123")

Notification.create(title: "This is message 1", description:"This is the discription of message 1", user_id: 1, email:"henk@test.com", created_at:"Tue, 22 May 2022 14:13:47.482360000 UTC +00:00")
Notification.create(title: "This is message 2", description:"This is the discription of message 2", user_id: 2, email:"henk@test.com", created_at:"Tue, 21 May 2022 14:13:47.482360000 UTC +00:00")
Notification.create(title: "This is message 3", description:"This is the discription of message 3", user_id: 2, email:"piet@test.com", created_at:"Tue, 24 May 2022 14:13:47.482360000 UTC +00:00", seen: true)
Notification.create(title: "This is message 4", description:"This is the discription of message 4", user_id: 1, email:"henk@test.com", created_at:"Tue, 18 May 2022 14:13:47.482360000 UTC +00:00")
Notification.create(title: "This is message 5", description:"This is the discription of message 5", user_id: 3, email:"henk@test.com", created_at:"Tue, 2 May 2021 14:13:47.482360000 UTC +00:00")
Notification.create(title: "This is message 6", description:"This is the discription of message 6", user_id: 1, email:"sara@test.com", created_at:"Tue, 24 May 2022 14:13:47.482360000 UTC +00:00", seen: true)
Notification.create(title: "This is message 7", description:"This is the discription of message 7", user_id: 1, email:"sara@test.com", created_at:"Tue, 3 May 2000 14:13:47.482360000 UTC +00:00")
Notification.create(title: "This is message 8", description:"This is the discription of message 8", user_id: 6, email:"piet@test.com", created_at:"Tue, 22 May 2000 14:13:47.482360000 UTC +00:00")
Notification.create(title: "This is message 9", description:"This is the discription of message 9", user_id: 1, email:"henk@test.com", created_at:"Tue, 21 May 2022 14:13:47.482360000 UTC +00:00", seen: true)

Comment.create(notification_id: 1, content: "First!", user_id: 1, created_at:"Tue, 24 May 2022 14:13:47.482360000 UTC +00:00")
Comment.create(notification_id: 1, content: "Second!", user_id: 3, created_at:"Tue, 24 May 2022 14:13:47.482360000 UTC +00:00")

