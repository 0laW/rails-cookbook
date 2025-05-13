# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "cleaning database..."
Recipe.destroy_all

puts "creating new recipes..."
Recipe.create!(name: "Pizza", description: "Italian pizza on sourdough base", image_url: "https://images.unsplash.com/photo-1574071318508-1cdbab80d002?q=80&w=1169&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", rating: 4.2)
Recipe.create!(name: "Paella", description: "Paella with fresh seafood", image_url: "https://plus.unsplash.com/premium_photo-1663855531676-3fcab15776af?q=80&w=765&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", rating: 3.9)
Recipe.create!(name: "Lasagna", description: "Delicious homemade lasagna", image_url: "https://images.unsplash.com/photo-1597289124948-688c1a35cb48?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", rating: 3.6)
Recipe.create!(name: "Chicken wings", description: "Crispy chicken wings", image_url: "https://plus.unsplash.com/premium_photo-1669742928112-19364a33b530?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", rating: 4.5)

puts "#{Recipe.count} recipes created!"
