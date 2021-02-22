# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: "John", last_name: "Doe", address: "123 Street Lane", email: "john@google.com", phone_number: "07777777777", password: "123456", owner: false)
User.create(first_name: "Jane", last_name: "Doe", address: "123 Street Lane", email: "jane@google.com", phone_number: "07777777776", password: "123456", owner: false)

Robot.create(name: "Cleanbot 3000", function: "Hoovering", rating: 4, user: User.find(1))
Robot.create(name: "WashTubBot", function: "Washing dishes", rating: 2, user: User.find(2))


