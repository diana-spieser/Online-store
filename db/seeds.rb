require "open-uri"

puts 'Seed: Deleting existing users...'

User.destroy_all

puts 'Seed: Creating users...'

user1 = User.create(email: "user1@gmail.com", password: 'password')
user2 = User.create(email: "user2@gmail.com", password: 'password')

puts 'Seed: Users created...'

puts 'Seed: Deleting existing categories...'

 Category.destroy_all

 puts 'Seed: Creating categories...'

 file_earrings = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1671184575/118292227_1138585019860689_8293820153618521345_n_hulht2.jpg")
 category_earrings = Category.new(name: "Earrings", description: "Handmade earrings")
 category_earrings.photo.attach(io: file_earrings, filename: "earrings", content_type: "image/jpg")
 category_earrings.save

file_necklaces = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1671184574/110110923_204627250955117_6444346907664275144_n_mna7ph.jpg")
category_necklaces = Category.new(name: "Necklaces", description: "Handmade necklaces")
category_necklaces.photo.attach(io: file_necklaces, filename: "necklaces", content_type: "image/jpg")
category_necklaces.save!

file_silver = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1671373019/36783383_614445615622770_8028850084609261568_n_x4ts0l.jpg")
category_silver = Category.new(name: "Silver", description: "Silver 925")
category_silver.photo.attach(io: file_silver, filename: "silver", content_type: "image/jpg")
category_silver.save!

file_accessories = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1671184575/295791734_780434536703565_2714556988311730122_n_tkt2pw.jpg")
category_accessories = Category.new(name: "Accessories", description: "Accessories")
category_accessories.photo.attach(io: file_accessories, filename: "accessories", content_type: "image/jpg")
category_accessories.save!

file_new_collection = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1671373018/26871283_155271565265937_6599325797012471808_n_lr06kl.jpg")
category_new_colection = Category.new(name: "New collection", description: "SS2023")
category_new_colection.photo.attach(io: file_new_collection, filename: "new collection", content_type: "image/jpg")
category_new_colection.save!


puts 'Seed: Category created...'

puts 'Seed: Creating products...'

file_one = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1671184575/295791734_780434536703565_2714556988311730122_n_tkt2pw.jpg")
product_one = Product.new(
  name: "Hawai", description: "Handmande earrings",price: 14, quantity: 3, user: user1,category: category_earrings)
product_one.photo.attach(io: file_one, filename: "product", content_type: "image/jpg")
product_one.save!

puts 'Seed: Products created...'

puts 'Seed: Finished seeding!'
