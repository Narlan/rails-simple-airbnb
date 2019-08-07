# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flat.delete_all
count = 0
times = 100

times.times do
  Flat.create!(
    name: Faker::Lorem.sentence(word_count: 2, supplemental: false, random_words_to_add: 2),
    address: Faker::Address.full_address,
    description: Faker::Lorem.sentence(word_count: 10, supplemental: false, random_words_to_add: 15),
    price_per_night: rand(10..120),
    number_of_guests: rand(1..6)
  )
  count += 1
  puts "#{count}/#{times}"
end
