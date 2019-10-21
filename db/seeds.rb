# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Message.destroy_all
User.destroy_all 
Chatroom.destroy_all


chatrooms = Chatroom.create([{name: "#space", description: "Exactly what it says on the rocket-proof tin of powdered food. Yum, intergalactic ice cream."}, {name: "#random", description: "I am very potato."}])

