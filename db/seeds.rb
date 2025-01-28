# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# In your seeds.rb file or database setup
# Product.create(name: 'Product 1', description: 'Description for Product 1', image_url: 'https://placehold.co/150', category_id: 1)
# Product.create(name: 'Product 2', description: 'Description for Product 2', image_url: 'https://placeholder.com/150', category_id: 1)
# Product.create(name: 'Product 3', description: 'Description for Product 3', image_url: 'https://placeholder.com/150', category_id: 1)
#

User.create(first_name: 'Admin', last_name: 'Admin', email: 'admin@admin.com', password: 'password', password_confirmation: 'password')
User.create(first_name: 'Tenant', last_name: 'Tenant', email: 'tenant@tenant.com', password: 'password', password_confirmation: 'password')
User.create(first_name: 'Tenant2', last_name: 'Tenant2', email: 'tenant2@tenant.com', password: 'password', password_confirmation: 'password')
