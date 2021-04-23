# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: 'Cosy studio at Paris',
  address: '127 Champs Elisses',
  description: 'A cosy studio at the most requinted quartier of paris!  Take a cofee and see Eifel Tower',
  price_per_night: 99,
  number_of_guests: 2
)

Flat.create!(
  name: 'A tropical penthouse',
  address: 'Vieira Souto, 50',
  description: 'A Penthouse in front at Ipanema Beach.  2 Floors and a Roff, all yours!',
  price_per_night: 600,
  number_of_guests: 10
)

Flat.create!(
  name: 'Holiday Flat at Santorini',
  address: 'Mikkonos 20',
  description: '1 bedroom with balcony, with all amenities.   You can view the Santorini beach!',
  price_per_night: 125,
  number_of_guests: 2
)
