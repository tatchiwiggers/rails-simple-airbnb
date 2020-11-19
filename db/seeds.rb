# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'wiping db...'
Flat.destroy_all
puts 'db wiped!'

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 95,
  number_of_guests: 3
)

Flat.create!(
  name: 'Stylish studio apartment',
  address: '440 Matias Aires st',
  description: 'Very modern studio apartment, in the heart of SP, for those who don\'t feel like spending too much money!',
  price_per_night: 65,
  number_of_guests: 2
)

Flat.create!(
  name: 'Beautiful flat in Copacabana',
  address: '102 rua julio de castilho st',
  description: 'Beautiful spacious flat two blocks from the beach!',
  price_per_night: 175,
  number_of_guests: 4
)

puts "created #{Flat.count} flats!"
puts 'all done!'