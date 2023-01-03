require "open-uri"

puts 'Seed: Deleting existing users...'

User.destroy_all

puts 'Seed: Creating users...'

user1 = User.create(email: "user1@gmail.com", password: 'password', )


puts 'Seed: Users created...'

puts 'Seed: Deleting existing categories...'

 Category.destroy_all

 puts 'Seed: Creating categories...'

 file_earrings = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1671184574/joanabossa/116294140_292483308857963_756576925739599811_n_ujqiov.jpg")
 category_earrings = Category.new(name: "Earrings", description: "Handmade earrings")
 category_earrings.photo.attach(io: file_earrings, filename: "earrings", content_type: "image/jpg")
 category_earrings.save

file_necklaces = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1671184574/joanabossa/110110923_204627250955117_6444346907664275144_n_mna7ph.jpg")
category_necklaces = Category.new(name: "Necklaces", description: "Handmade necklaces")
category_necklaces.photo.attach(io: file_necklaces, filename: "necklaces", content_type: "image/jpg")
category_necklaces.save!

file_silver = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1671373019/joanabossa/36783383_614445615622770_8028850084609261568_n_x4ts0l.jpg")
category_silver = Category.new(name: "Silver", description: "Silver 925")
category_silver.photo.attach(io: file_silver, filename: "silver", content_type: "image/jpg")
category_silver.save!

file_accessories = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1671184575/joanabossa/295791734_780434536703565_2714556988311730122_n_tkt2pw.jpg")
category_accessories = Category.new(name: "Accessories", description: "Accessories")
category_accessories.photo.attach(io: file_accessories, filename: "accessories", content_type: "image/jpg")
category_accessories.save!

file_new_collection = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1671373019/joanabossa/103986176_269440044363212_455038791219377184_n_mppdcg.jpg")
category_new_collection = Category.new(name: "New collection", description: "SS2023")
category_new_collection.photo.attach(io: file_new_collection, filename: "new collection", content_type: "image/jpg")
category_new_collection.save!

file_special_offers = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1671373019/joanabossa/49371827_2031560843597656_8162156449745709384_n_qgsw69.jpg")
category_special_offers = Category.new(name: "Special Offers", description: "Last items from previos collections on top price!")
category_special_offers.photo.attach(io: file_special_offers, filename: "special offers", content_type: "image/jpg")
category_special_offers.save!

puts 'Seed: Category created...'

puts 'Seed: Creating products...'

file_one = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1671372962/joanabossa/26864205_571365843213954_3305402450134958080_n_iuy1g0.jpg")
product_one = Product.new(
  name: "Imi loa", description: "Handmande earrings, the Hawaiian Seeker of knowledge, irresitable model as well!",price: 14, quantity: 3, user: user1,category: category_earrings)
product_one.photo.attach(io: file_one, filename: "product", content_type: "image/jpg")
product_one.save!

file_two = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1672734371/joanabossa/320935380_1334931577326991_7627723067549388851_n_f6hj7w.jpg")
product_two = Product.new(
  name: "Longboard", description: "Handmande earrings for longboard lovers",price: 15, quantity: 1, user: user1,category: category_earrings)
product_two.photo.attach(io: file_two, filename: "product", content_type: "image/jpg")
product_two.save!

file_three = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1672734371/joanabossa/320997896_3523146557973899_8039671669394343699_n_ngqp8j.jpg")
product_three = Product.new(
  name: "Rockamar", description: "Handmande earrings simple and wavy",price: 17, quantity: 1, user: user1,category: category_earrings)
product_three.photo.attach(io: file_three, filename: "product", content_type: "image/jpg")
product_three.save!

file_four = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1672734371/joanabossa/318531961_511400584354333_2555458654336043670_n_hndqyd.jpg")
product_four = Product.new(
  name: "Wave", description: "Handmande earrings simple and wavy",price: 17, quantity: 1, user: user1,category: category_earrings)
product_four.photo.attach(io: file_four, filename: "product", content_type: "image/jpg")
product_four.save!

file_five = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1672734371/joanabossa/316401087_663928921896898_446676475758543922_n_zddiad.jpg")
product_five = Product.new(
  name: "Cowrie", description: "Handmande earrings with cowrie shell from Costa Rica ",price: 17, quantity: 1, user: user1,category: category_earrings)
product_five.photo.attach(io: file_five, filename: "product", content_type: "image/jpg")
product_five.save!

file_six = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1672734371/joanabossa/316447186_494469422652031_5277536034828714196_n_hcacq0.jpg")
six = Product.new(
  name: "Place of happiness", description: "Materials: enamel, stainless steel and silica reflective beads ",price: 16, quantity: 1, user: user1,category: category_earrings)
six.photo.attach(io: file_six, filename: "product", content_type: "image/jpg")
six.save!

file_seven = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1672750896/joanabossa/310771332_685307559253458_6556628591405182201_n_ezrwlx.jpg")
product_seven = Product.new(
  name: "Ventos Jeri", description: "Hand made earrings for wind lovers! ",price: 17, quantity: 1, user: user1,category: category_earrings)
product_seven.photo.attach(io: file_seven, filename: "product", content_type: "image/jpg")
product_seven.save!

file_eight = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1671439866/joanabossa/26871206_222960728276503_9009291994735837184_n_krlxa3.jpg")
product_eight = Product.new(
  name: "Windsurf Jeri", description: "Hand made earrings for wind lovers! ",price: 18, quantity: 1, user: user1,category: category_earrings)
product_eight.photo.attach(io: file_eight, filename: "product", content_type: "image/jpg")
product_eight.save!

file_nine = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1671373019/joanabossa/307772227_806036963880484_2205889920194392244_n_iekrwa.jpg")
product_nine = Product.new(
  name: "Downwinde", description: "A wave of warm Brazilian tones with @evantures!",price: 14, quantity: 1, user: user1,category: category_earrings)
product_nine.photo.attach(io: file_nine, filename: "product", content_type: "image/jpg")
product_nine.save!

file_ten = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1672751396/joanabossa/307149535_794366391714128_3808997464321875752_n_ryhkxs.jpg")
product_ten = Product.new(
  name: "Ho'olele lupe", description: "Materials: enamel, lava beads.In Hawaiian 'Ho'olele lupe' means 'Kite flying'",price: 14, quantity: 1, user: user1,category: category_earrings)
product_ten.photo.attach(io: file_ten, filename: "product", content_type: "image/jpg")
product_ten.save!

file_eleven = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1672751083/joanabossa/307841115_391953926437269_7276269204385466134_n_icwgrf.jpg")
product_eleven = Product.new(
  name: "Moana", description: "Hand made earrings for wind wave, wind & surf lovers! ",price: 19, quantity: 1, user: user1,category: category_earrings)
product_eleven.photo.attach(io: file_eleven, filename: "product", content_type: "image/jpg")
product_eleven.save!

puts 'Seed: Products created...'

puts 'Seed: Finished seeding!'
