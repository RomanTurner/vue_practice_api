# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all 
Event.destroy_all 
Participant.destroy_all

puts "Creating Users 🧬"
10.times do 
    User.create(name: Faker::Fantasy::Tolkien.character)
end

puts "Creating Events 🎉"
20.times do
    Event.create( 
    title: Faker::JapaneseMedia::Naruto.village,
    category: Faker::Restaurant.type,
    description: Faker::Fantasy::Tolkien.poem,
    location: Faker::Fantasy::Tolkien.location,
    date:Faker::Date.forward(days: 23),
    time: "#{rand(1..24)}:00",
    organizer: User.all.sample,
    pets_allowed: rand(0..1)
)
end

puts "Creating Participants 👯‍♂️"
10.times do
    Participant.create(event: Event.first, user: User.all.sample)
end