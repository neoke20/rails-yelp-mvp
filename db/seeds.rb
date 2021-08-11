puts 'Cleaning Database'
Restaurant.destroy_all

puts 'Creating restaurants...'
15.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: Restaurant::CATEGORIES.sample
  )
  puts "Creating restaurant ##{restaurant.id}"
end
puts "Done!"
