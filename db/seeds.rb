# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: "John", last_name: "Doe", address: "123 Street Lane", email: "john@google.com", phone_number: "07777777777", password: "123456", owner: false)
User.create(first_name: "Jane", last_name: "Doe", address: "123 Wallace Place", email: "jane@google.com", phone_number: "07777777776", password: "123456", owner: false)
User.create(first_name: "Nigel", last_name: "Thornberry", address: "The RV in the jungle", email: "Nige@jungle.com", phone_number: "07777777775", password: "123456", owner: true)


Robot.create(name: "Cleanbot 3000", function: "Hoovering", rating: 4, user: User.find(3))
Robot.create(name: "WashTubBot", function: "Washing dishes", rating: 2, user: User.find(3))
Robot.create(name: "Marvin", function: "Picking up paper", rating: 1, user: User.find(3))

# sessions_datetime format - "YYYY-MM-DD HH:MM:SS.MMMMMM"

Appointment.create(sessions_duration: 3600, sessions_datetime: "2021-03-04 15:30:00.000000", user_id: 1, robot_id: 2)
Appointment.create(sessions_duration: 7200, sessions_datetime: "2021-03-05 17:00:00.000000", user_id: 2, robot_id: 1)
