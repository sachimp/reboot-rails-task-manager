require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating 10 random tasks'
10.times do
  task = Task.new(
    title: Faker::Games::LeagueOfLegends.quote,
    details: Faker::Quote.famous_last_words,
    completed: false
  )
  task.save!
end
puts 'Finished!'
