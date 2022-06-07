require 'faker'

3.times do
  flat = Flat.new(
     name: Faker::Name.name,
     address: Faker::Address.street_address,
     description: Faker::Lorem.sentences(number: 3),
     price_per_night: Faker::Commerce.price,
     number_of_guests: rand(6)
    )
    flat.save
end
