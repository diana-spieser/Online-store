require "open-uri"

puts 'Seed: Deleting existing users...'

User.destroy_all

puts 'Seed: Creating users...'

user1 = User.create(email: "joanabogdanova@gmail.com", password: 'password', admin: true )


puts 'Seed: Users created...'

puts 'Seed: Deleting existing categories...'

 Category.destroy_all

 puts 'Seed: Creating categories...'

 file_earrings = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675418917/earrings_rzmjqk.png")
 category_earrings = Category.new(name: "Earrings", description: "Handmade earrings")
 category_earrings.photo.attach(io: file_earrings, filename: "earrings", content_type: "image/jpg")
 category_earrings.save!

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

file_dance = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675411334/dance_eagxfi.png")
category_dance = Category.new(name: "Dance", description: "A special collection of silver earrings for dance lovers.")
category_dance.photo.attach(io: file_dance, filename: "dance", content_type: "image/jpg")
category_dance.save!

file_silver_necklaces = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675417413/silver_necklaces_omdha4.png")
category_silver_necklaces = Category.new(name: "Silver neacklace", description: "A selection of delicate silver necklaces with natural minerals")
category_silver_necklaces.photo.attach(io: file_silver_necklaces, filename: "silver necklace", content_type: "image/jpg")
category_silver_necklaces.save!

puts 'Seed: Category created...'

puts 'Seed: Creating products...'

file_1 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675411405/into_the_groove_flwiga.png")
file_1_2 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675411334/dance_eagxfi.png")
file_1_3 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675414777/dance_3.png_rmnrqj.jpg")

product_one = Product.new(
  name: "🎶Into the groove🎶",
  description: "Silver and découpage earrings #dancing
  #lindyhop #intothegroove #jamming #танци",
  price: 30,
  quantity: 1,
  user: user1,
  category: category_dance
)

product_one.photos.attach(io: file_1, filename: "into the groove", content_type: "image/jpg")
product_one.photos.attach(io: file_1_2, filename: "dance_1", content_type: "image/jpg")
product_one.photos.attach(io: file_1_3, filename: "dance_2", content_type: "image/jpg")

product_one.save!

file_2 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675339138/dancer_joana_bossa_y9osib.jpg")
file_2_2 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675416729/groovy_hszumf.png")
file_2_3 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675411334/dance_eagxfi.png")

product_two = Product.new(
  name: "🎶Groovy🎶",
  description: "Dancing earrings made of silver and decoupage to move your day 🌟 #dancefever #groovy #intotherhythm #dancejewelry #move #silver",
  price: 30,
  quantity: 1,
  user: user1,
  category: category_dance
)

product_two.photos.attach(io: file_2, filename: "groovy", content_type: "image/jpg")
product_two.photos.attach(io: file_2_2, filename: "dance_3", content_type: "image/jpg")
product_two.photos.attach(io: file_2_3, filename: "dance_4", content_type: "image/jpg")

product_two.save!


file_3 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675416956/jazz_wbtnsf.png")
file_3_2 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675416955/jazz2_ugdmvu.png")
file_3_3 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675414777/dance_3.png_rmnrqj.jpg")
product_three = Product.new(
  name: "🎶Jazz🎶",
  description: "This silver earring dancing couple is crazy about jazz.#линдихоп #танцьори #dance #dancers #jazzdance #intothemusic",
  price: 30,
  quantity: 1,
  user: user1,
  category: category_dance
)

product_three.photos.attach(io: file_3, filename: "jazz", content_type: "image/jpg")
product_three.photos.attach(io: file_3_2, filename: "jazz_1", content_type: "image/jpg")
product_three.photos.attach(io: file_3_3, filename: "dance_5", content_type: "image/jpg")

product_three.save!

file_4 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675417413/silver_necklace_uwoj1k.png")
file_4_2 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675417989/silver_neclace2_freb9u.png")
file_4_3 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675417413/silver_necklaces_omdha4.png")
product_four = Product.new(
  name: "Sapphire & Aquamarine",
  description: "Delicate silver necklaces with natural minerals. Ideal for combining with a longer necklace and suitable for both causal & spacial occasions.. #silverjewelry #handmadejewelry #gemstonenecklace #summerqueen",
  price: 30,
  quantity: 1,
  user: user1,
  category: category_silver_necklaces
)

product_four.photos.attach(io: file_4, filename: "jazz", content_type: "image/jpg")
product_four.photos.attach(io: file_4_2, filename: "jazz_1", content_type: "image/jpg")
product_four.photos.attach(io: file_4_3, filename: "dance_5", content_type: "image/jpg")

product_four.save!


file_5 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1672734371/joanabossa/316401087_663928921896898_446676475758543922_n_zddiad.jpg")
file_5_2 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675419224/joana_icccg7.png")

product_five = Product.new(
name: "Cowrie",
description: "Handmande earrings with cowrie shell from Costa Rica ",
price: 17,
quantity: 1,
user: user1,
category:category_earrings)
product_five.photos.attach(io: file_5, filename: "corwie", content_type: "image/jpg")
product_five.photos.attach(io: file_5_2, filename: "corwie2", content_type: "image/jpg")
product_five.save!

file_6 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675419893/moei_ointqu.png")
file_6_2 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675419893/moei3_mqwtyc.png")
file_6_3 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675419893/moei2_jxpzwy.png")
product_six = Product.new(
name: "Moei",
  description: "Materials: stainless steel, enamel, natural stone beads
 #jewelrydesign #oceaninspired #surferjewelry #surfergirljewelry #surfergirl #santateresa #puravida #handmadejewelry #surfstyle #waveearrings",
  price: 30,
  quantity: 1,
  user: user1,
  category: category_earrings
)

product_six.photos.attach(io: file_6, filename: "moei", content_type: "image/jpg")
product_six.photos.attach(io: file_6_2, filename: "moei_1", content_type: "image/jpg")
product_six.photos.attach(io: file_6_3, filename: "moei_2", content_type: "image/jpg")

product_six.save!


puts 'Seed: Products created...'



puts 'Seed: Finished seeding!'
