# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all 
Chatroom.destroy_all
Message.destroy_all


users = User.create([{username: "Oli", password: "ILOVERUBY"}, {username: "Polly", password: "ITOOLOVERUBY"}])

chatrooms = Chatroom.create([{name: "#space", description: "Exactly what it says on the rocket-proof tin of powdered food. Yum, intergalactic ice cream."}, {name: "#random", description: "I am very potato."}])

messages = [
    {content: "test message 1", user_id: 5, chatroom_id: 5},
    {content: "test message 2", user_id: 6, chatroom_id: 5},
    {content: "test message 3", user_id: 5, chatroom_id: 6},
    {content: "test message 4", user_id: 6, chatroom_id: 6},
]
Message.create(messages)