# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: "Henk@test.com", password: "test123", password_confirmation:"test123")
User.create(email: "Piet@test.com", password: "test123", password_confirmation:"test123")
User.create(email: "John@test.com", password: "test123", password_confirmation:"test123")
User.create(email: "Kyle@test.com", password: "test123", password_confirmation:"test123")
User.create(email: "Siri@test.com", password: "test123", password_confirmation:"test123")
User.create(email: "Sara@test.com", password: "test123", password_confirmation:"test123")
User.create(email: "Iris@test.com", password: "test123", password_confirmation:"test123")

Notification.create(title: "This is message 1", description:"This is the discription of message 1", user_id: 1, email:"henk@test.com")
Notification.create(title: "This is message 2", description:"This is the discription of message 2", user_id: 2, email:"henk@test.com")
Notification.create(title: "This is message 3", description:"This is the discription of message 3", user_id: 2, email:"henk@test.com", seen: true)