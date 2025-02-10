# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Destroying restaurants...'
Restaurant.destroy_all
puts 'Creating restaurants...'
Restaurant.create!(name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'chinese', phone_number: '123456789')
Restaurant.create!(name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian', phone_number: '123456789')
Restaurant.create!(name: 'Pizza West', address: '56A Westditch High St, London E1 6PQ', category: 'japanese', phone_number: '123456789')
Restaurant.create!(name: 'Pizza South', address: '56A Southditch High St, London E1 6PQ', category: 'french', phone_number: '123456789')
Restaurant.create!(name: "O Escondidnho", address: "Rua da Associação, 0", category: "belgian", phone_number: '123456789')


puts 'Restaurants created!'
