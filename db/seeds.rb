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
User.create!(email: "ar.user@example.com",
            password: "password",
            password_confirmation: "password")
User.create!(email: "ar.tech@example.com",
            password: "password",
            password_confirmation: "password",
            role: User.roles[:tech])
User.create!(email: "ar.admin@example.com",
            password: "password",
            password_confirmation: "password",
            role: User.roles[:admin])
p "Created #{User.count} users"

# Delete services
Service.destroy_all
p "Confirmed deletes: #{Service.count} Service records are left."

# Delete Categories
ServiceCategory.destroy_all
p "Confirmed deletes: #{ServiceCategory.count} Service_Category records are left."

# Create service categories
ServiceCategory.create!(name: "General", id: 1)
ServiceCategory.create!(name: "Electrical", id: 2)
ServiceCategory.create!(name: "Tires", id: 3)
ServiceCategory.create!(name: "Fluids", id: 4)
ServiceCategory.create!(name: "Oil Change", id: 5)
ServiceCategory.create!(name: "Specialty Oils", id: 6)
ServiceCategory.create!(name: "Diesel Oils", id: 7)
p "Created #{ServiceCategory.count} service categories"

# Create services
Service.create!(name: "Own Oil", description: "17 Point oil change | review engine bay - battery / belt / hoses / air filter / fluids | Lights | Tires | Brakes | Suspension | Axles | Leaks | Cabin Air Filter", price: 49.99, quart: 4.99, service_category_id: 5)
Service.create!(name: "Conventional", description: "17 Point oil change | review engine bay - battery / belt / hoses / air filter / fluids | Lights | Tires | Brakes | Suspension | Axles | Leaks | Cabin Air Filter", price: 49.99, quart: 4.99, service_category_id: 5)
Service.create!(name: "High Mileage", description: "17 Point oil change | review engine bay - battery / belt / hoses / air filter / fluids | Lights | Tires | Brakes | Suspension | Axles | Leaks | Cabin Air Filter", price: 79.99, quart: 7.99, service_category_id: 5)
Service.create!(name: "Synethetic Blend", description: "17 Point oil change | review engine bay - battery / belt / hoses / air filter / fluids | Lights | Tires | Brakes | Suspension | Axles | Leaks | Cabin Air Filter", price: 79.99, quart: 7.99, service_category_id: 5)
Service.create!(name: "Full Synthetic", description: "17 Point oil change | review engine bay - battery / belt / hoses / air filter / fluids | Lights | Tires | Brakes | Suspension | Axles | Leaks | Cabin Air Filter", price: 99.99, quart: 14.99, service_category_id: 5)
p "Created #{Service.count} services"
