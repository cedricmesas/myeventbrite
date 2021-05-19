# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "date"
require 'faker'

Attendance.delete_all
Event.delete_all
User.delete_all

10.times do
    User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.sentences(2).join,
    email: Faker::Internet.safe_email,
    password:Faker::Lorem.characters(number: 10)) 
end

10.times do
    Event.create(
    start_date: DateTime.now, 
    title: "YDNKJS", 
    price: 1, 
    description: "lorem ipsum lele", 
    duration: 60, 
    location: "no where", 
    user_id: User.all.sample.id)
end

10.times do
    Attendance.create!(
    event: Event.all.sample, 
    user_id: User.all.sample.id, 
    stripe_customer_id: Faker::Lorem.characters(number: 10))
end