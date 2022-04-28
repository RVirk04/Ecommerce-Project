# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"
require 'open-uri'

User.destroy_all
Category.destroy_all
Product.destroy_all
Province.destroy_all

User.create!(name:  'Sam Virk',
             email: 'sam@virk.com',
             password:              'password',
             password_confirmation: 'password',
             admin:     true,
             activated: true,
             activated_at: Time.zone.now)

7.times do |n|
  name  = Faker::Name.name
  email = "virk#{n + 1}@virk.com"
  password = 'password'
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)

  users = User.order(:created_at).take(6)

  7.times do
    content = Faker::Lorem.sentence(5)
    users.each { |user| user.microposts.create!(content: content) }
  end
end

# Add file path of the csv file
csv_category_file = Rails.root.join('db/categories.csv')

csv_category_data = File.read(csv_category_file)
category = CSV.parse(csv_category_data, headers: true, encoding: 'iso-8859-1')

category.each do |c|
  category = Category.find_or_create_by(
    id: c["id"],
    name: c["category"]
  )
end

# Add file path of the csv file
csv_product_file = Rails.root.join('db/products.csv')

csv_product_data = File.read(csv_product_file)
product = CSV.parse(csv_product_data, headers: true, encoding: 'iso-8859-1')

product.each do |p|
  # Create a new player
  product = Product.find_or_create_by(
    id: p["id"],
    name: p["name"],
    description: p["details"],
    price: p["price"],
    category_id: p["category"]
    # picture: URI.parse(p["picture"])
  )
end

# Add file path of the csv file
csv_provinces_file = Rails.root.join('db/provinces.csv')

csv_provinces_data = File.read(csv_provinces_file)
province = CSV.parse(csv_provinces_data, headers: true, encoding: 'iso-8859-1')

province.each do |t|
  # Create a new player
  province = Province.find_or_create_by(
    id: t["id"],
    name: t["province"],
    gst: t["gst"],
    pst: t["pst"],
    hst: t["hst"]
  )
end

puts "Created #{Category.count} categories."
puts "Created #{Product.count} products."
puts "Created #{Province.count} provinces with taxes."
# product1 = Product.create({:name=>"tomato", :price => 1})
# product2 = Product.create({:name=>"milk", :price => 3})
# product3 = Product.create({:name=>"bread", :price => 5.50})
# product4 = Product.create({:name=>"bacon", :price => 10})
# product5 = Product.create({:name=>"cheese", :price => 3.20})
# product6 = Product.create({:name=>"molohia", :price => 15.20})

# puts "Total number of products: #{Product.all.count}"
# puts "Product names: #{Product.all.pluck("name")}"
# puts "Product: #{product.name} price: #{product.price.round(2)}"
# puts "Product2: #{product2.name} price: #{product2.price.round(2)}"
# puts "Product3: #{product3.name} price: #{product3.price.round(2)}"
# puts "Product4: #{product4.name} price: #{product4.price.round(2)}"
# puts "Product5: #{product5.name} price: #{product5.price.round(2)}"
# puts "Product6: #{product6.name} price: #{product6.price.round(2)}"

# CART
Cart.destroy_all
puts "\nTotal cart count: #{Cart.all.count}"

# Following relationships
users = User.first(50)
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }
