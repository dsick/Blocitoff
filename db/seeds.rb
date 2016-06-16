# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Create Users

# Create an premium user
standard = User.create!(
  username: 'dsick',
  email:    'sick@davesick.net',
  password: 'password',
  password_confirmation: 'password'
)

# Create an standard user
premium = User.create!(
  username: 'dave',
  email:    'dave@davesick.net',
  password: 'password',
  password_confirmation: 'password'
)

5.times do
  Item.create!(
    name: Faker::Lorem.sentence,
    user_id: 1,
    created_at: Time.now-8.days
  )
end

5.times do
  Item.create!(
    name: Faker::Lorem.sentence,
    user_id: 2,
  )
end
items = Item.all



puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"

