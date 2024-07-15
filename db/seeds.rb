# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#
# Delete users
User.destroy_all
p "Confirmed deletes: #{User.count} User records are left."

# Create a generic initial with admin and regular user
User.create!(email: "ar.admin@example.com",
            password: "password",
            password_confirmation: "password",
            role: User.roles[:admin])
User.create!(email: "ar.user@example.com",
            password: "password",
            password_confirmation: "password")
p "Created #{User.count} users"

# Delete services
Service.destroy_all
p "Confirmed deletes: #{Service.count} Service records are left."

# Create services
Service.create!(name: "Own Oil", description: "Bring your own oil!", price: 49.99)
Service.create!(name: "Conventional Oil Change", description: "Conventional Oil Change", price: 49.99)
Service.create!(name: "High Mileage Oil Change", description: "High Mileage Oil Change", price: 79.99)
p "Created #{Service.count} services"
