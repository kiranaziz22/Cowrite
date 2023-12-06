# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning db..."
Story.destroy_all
puts "Creating db..."

user1 = User.create(first_name: "Jonny", last_name: "Dunseath", username: "Beatwrecka", email: "email@gmail.com", password: "123456", password_confirmation: "123456")
user1.save

story1 = Story.create(title: "Haunted", genre: "Horror", content: "just said it was scary", synopsis: "Such a scary story", user_id: user1.id)
story1.save

story2 = Story.create(title: "Haunteeed", genre: "Horror", content: "again just said it was scary", synopsis: "Also uch a scary story", user_id: user1.id)
story2.save

puts "Done!"
