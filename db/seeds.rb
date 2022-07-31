# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
User.destrroy_all

puts 'Creating Admin'
User.create(email: "sanrmurphy.family@btinternet.com", password: "BeaglesAreCool", is_admin: true)
puts 'Admin is created'

InformationForm.destroy_all
puts "Finished!"
# admin_user = User.new()
# admin_user.admins = true
# admin_user.save
