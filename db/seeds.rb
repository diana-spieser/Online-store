require "open-uri"
puts 'Seed: Deleting existing users...'

User.destroy_all

puts 'Seed: Creating users...'

user = User.create!(email: "diana@gmail.com", password: "password")

puts 'Seed: Users created...'

 puts 'Seed: Deleting existing categories...'

 Category.destroy_all

 puts 'Seed: Creating categories...'

 file = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1671184575/118292227_1138585019860689_8293820153618521345_n_hulht2.jpg")
 category1 = Category.new(name: "Earrings", description: "Handmade earrings", user: user)
 category1.photo.attach(io: file, filename: "earrings", content_type: "image/jpg")
 category1.save!

file = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1671184574/110110923_204627250955117_6444346907664275144_n_mna7ph.jpg")
category2 = Category.new(name: "Necklaces", description: "Handmade necklaces", user: user)
category2.photo.attach(io: file, filename: "necklaces", content_type: "image/jpg")
category2.save

file = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1671184574/117605299_187874542943780_5199857271505950693_n_jeeqv9.jpg")
category3 = Category.new(name: "Silver", description: "Silver 925", user: user)
category3.photo.attach(io: file, filename: "silver", content_type: "image/jpg")
category3.save

file = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1671184575/295791734_780434536703565_2714556988311730122_n_tkt2pw.jpg")
category4 = Category.new(name: "Accessories", description: "Accessories", user: user)
category4.photo.attach(io: file, filename: "accessories", content_type: "image/jpg")
category4.save

puts 'Seed: Category created...'

puts 'Seed: Finished seeding!'
