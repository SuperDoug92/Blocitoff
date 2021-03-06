require 'faker'

# Create Users
5.times do
  user = User.new(
    name:     Faker::Name.name,
    email:    Faker::Internet.email,
    password: Faker::Lorem.characters(10)
  )
  user.skip_confirmation!
  user.save!
 end
 users = User.all

# Create Items
50.times do
  Item.create!(
  user: users.sample,
  name:  Faker::Lorem.sentence,
  )
end
items = Item.all

puts "Seed finished"
puts "#{Item.count} Items created"
puts "#{User.count} Users created"