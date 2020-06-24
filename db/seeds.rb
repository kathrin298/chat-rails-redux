
puts 'Deleting previous data'
Message.destroy_all
User.destroy_all
Channel.destroy_all

puts 'Creating some channels'
general = Channel.create(name: 'general')
berlin = Channel.create(name: 'berlin')
react = Channel.create(name: 'react')
channels = [general, berlin, react]

puts 'Creating users'
user_1 = User.create(email: 'max@lewagon.com', password: 'password')
user_2 = User.create(email: 'sara@lewagon.com', password: 'password')
user_3 = User.create(email: 'kat@lewagon.com', password: 'password')
users = [user_1, user_2, user_3]

puts 'Creating messages'
message_1 = 'Can someone help me?'
message_2 = 'I just build this really cool app. Check it out!'
message_3 = "Hey, I'm new here, what's going on?"
message_4 = "This is my new react app. It lets me chat to other people.."
message_5 = "That's great, dude!"
messages = [message_5, message_4, message_3, message_2, message_1]

10.times do
  Message.create(channel: channels.sample, user: users.sample, content: messages.sample)
end

