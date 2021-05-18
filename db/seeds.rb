# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Event.destroy_all
Attendance.destroy_all

10.times do
    User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        description: Faker::Lorem.sentences(2).join,
        email:"@yopmail.com")
end

10.times do
    Event.create(
        start_date: Faker::Date.between(from: '2021-05-18', to: '2025-09-25'),
        duration: 150, 
        title: Faker::String.random(length: 5..140).gsub("\u0000", ''), 
        description: Faker::String.random(length: 20..1000).gsub("\u0000", ''),
        price: Faker::Number.between(from: 1.0, to: 1000.0), 
        location:Faker::Lorem.words(number: 1).join)
end

20.times do
    Attendance.create(
        user:User.all.sample, 
        event: Event.all.sample, 
        stripe_customer_id: Faker::String.random(length: 6..12))
end