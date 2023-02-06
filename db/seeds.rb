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

file_dance = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675411334/dance_eagxfi.png")
category_dance = Category.new(name: "Dance", description: "A special collection of silver earrings for dance lovers.")
category_dance.photo.attach(io: file_dance, filename: "dance", content_type: "image/jpg")
category_dance.save!

file_silver_necklaces = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675417413/silver_necklaces_omdha4.png")
category_silver_necklaces = Category.new(name: "Silver neacklaces", description: "A selection of delicate silver necklaces with natural minerals")
category_silver_necklaces.photo.attach(io: file_silver_necklaces, filename: "silver necklace", content_type: "image/jpg")
category_silver_necklaces.save!

file_rockamar = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675591781/rockamar_zumr9g.png")
category_rockamar = Category.new(name: "Rockamar", description: "For a week full of waves and stoke!")
category_rockamar.photo.attach(io: file_rockamar, filename: "rockamar", content_type: "image/jpg")
category_rockamar.save!

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


file_7 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675590102/sunset_reef_bs1sky.png")
file_7_2 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675590246/sunset_reef_3_otzovn.png")
file_7_3 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675590102/sunset_reef_2_ufutcz.png")
product_seven = Product.new(
  name: "Sunset reef",
  description: "Have you experienced loosing a fin out in the ocean? Celebrating the funkiness of this feeling comes this new model from Makai Costa Rica collection. One lost, one found:)
  Materials: silver 925, stainless steel, enamel.
  #silverjewelry #enameljewelry #surfjewelery #surfgirljewelry #surfing #surfchicas #lostfin",
  price: 35,
  quantity: 1,
  user: user1,
  category: category_silver
)

product_seven.photos.attach(io: file_7, filename: "suneset_reef", content_type: "image/jpg")
product_seven.photos.attach(io: file_7_2, filename: "sunset_reef_1", content_type: "image/jpg")
product_seven.photos.attach(io: file_7_3, filename: "sunset_reef_2", content_type: "image/jpg")

product_seven.save!

file_8 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675590830/hermosa_c8fvnt.png")
file_8_2 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675590830/hermosa_2_evvneq.png")
file_8_3 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675590830/hermosa_1_uopoq5.png")
product_eight = Product.new(
  name: "Hermosa",
  description: "Materials: silver 925, stainless steel and enamel It is also available in turquoise. Loves the waves.🌊💙
  #heart #surf #girl #surfstation #gonesurfing #fortheloveofsurfing",
  price: 32,
  quantity: 1,
  user: user1,
  category: category_silver
)

product_eight.photos.attach(io: file_8, filename: "hermosa", content_type: "image/jpg")
product_eight.photos.attach(io: file_8_2, filename: "hermosa_1", content_type: "image/jpg")
product_eight.photos.attach(io: file_8_3, filename: "hermosa_2", content_type: "image/jpg")

product_eight.save!



file_9 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675591781/rockamar_earrings_black_ahswsc.png")
file_9_2 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675591781/rockamar_earrings_all_nlgmc6.png")
file_9_3 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675591781/rockamar_zumr9g.png")
product_nine = Product.new(
  name: "Rockamar",
  description: "For a week full of waves and stoke! Black & white
  Materials: stainless steel base, enamel.",
  price: 16,
  quantity: 1,
  user: user1,
  category: category_rockamar
)

product_nine.photos.attach(io: file_9, filename: "Rockamar", content_type: "image/jpg")
product_nine.photos.attach(io: file_9_2, filename: "Rockamar_1", content_type: "image/jpg")
product_nine.photos.attach(io: file_9_3, filename: "Rockamar_2", content_type: "image/jpg")

product_nine.save!


file_10 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675592100/rockamar_blue_and_white_s7yamq.png")
file_10_2 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675591781/rockamar_earrings_all_nlgmc6.png")
file_10_3 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675591781/rockamar_zumr9g.png")
product_ten = Product.new(
  name: "Rockamar",
  description: "For a week full of waves and stoke! Blue & white
  Materials: stainless steel base, enamel.",
  price: 16,
  quantity: 1,
  user: user1,
  category: category_rockamar
)

product_ten.photos.attach(io: file_10, filename: "Rockamar", content_type: "image/jpg")
product_ten.photos.attach(io: file_10_2, filename: "Rockamar_3", content_type: "image/jpg")
product_ten.photos.attach(io: file_10_3, filename: "Rockamar_4", content_type: "image/jpg")

product_ten.save!
puts 'Seed: Products created...'
puts 'Seed: Products created...'

file_11 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675592463/rockamar_bracelet_zawwta.png")
file_11_2 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675592463/rockamar_bracelet_1_goscl6.png")
file_11_3 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675592463/rockamar_bracelet_2_dtvuco.png")
product_eleven = Product.new(
  name: "Rockamar",
  description: "For the ones of you who like details and waves:) This unisex bracelet model has a delicate presence, swims perfect in salty and sweet waters and likes to remind you of the ocean.
  Materials: Stainless steel, enamel and cord
  Size: Comes in various sizes and colors",
  price: 16,
  quantity: 1,
  user: user1,
  category: category_rockamar
)

product_eleven.photos.attach(io: file_11, filename: "Rockamar", content_type: "image/jpg")
product_eleven.photos.attach(io: file_11_2, filename: "Rockamar_5", content_type: "image/jpg")
product_eleven.photos.attach(io: file_11_3, filename: "Rockamar_6", content_type: "image/jpg")

product_eleven.save!


file_12 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675593756/moana_enyiey.png")
file_12_2 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675593756/moana_2_ta4jhw.png")
file_12_3 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675593756/moana_1_yv3yyk.png")

product_twelve = Product.new(
  name: "Moana",
  description: "love waves, seas and oceans🌊

  #surf #surfergirl #moana #surfearrings #gonesurfing #surflife",
  price: 15,
  quantity: 1,
  user: user1,
  category: category_earrings
)

product_twelve.photos.attach(io: file_12, filename: "Moana", content_type: "image/jpg")
product_twelve.photos.attach(io: file_12_2, filename: "Moana_1", content_type: "image/jpg")
product_twelve.photos.attach(io: file_12_3, filename: "Moana_2", content_type: "image/jpg")
product_twelve.save!

file_13 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675594310/sunglassess_chain_1_tfi5ez.png")
file_13_2 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675594310/sunlass_chain_men_utdpdl.png")
file_13_3 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675594310/sunglasses_chain_men_dcixji.png")

product_thirtheen = Product.new(
  name: "Sunglasses chain for men",
  description: "A custom made design for man sunglass chain. Simple and stylish with some blue hints reminding of the sea horizons.🕶️🔅

  #styleinspo #sunglassesstyle #sunglasseschain #jewelryforsurfers #sunisshining",
  price: 15,
  quantity: 1,
  user: user1,
  category: category_accessories
)

product_thirtheen.photos.attach(io: file_13, filename: "Sunglasses_chain", content_type: "image/jpg")
product_thirtheen.photos.attach(io: file_13_2, filename: "Sunglasses_chain_1", content_type: "image/jpg")
product_thirtheen.photos.attach(io: file_13_3, filename: "Sunglasses_chain_2", content_type: "image/jpg")
product_thirtheen.save!

file_14 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675594638/chain_ybwpns.png")
file_14_2 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675594638/chain_1_gvagto.png")
file_14_3 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1675594637/chain_3_pbnbjm.png")

product_fourtheen = Product.new(
  name: "Sunglasses chain",
  description: "Recently I have been working on something new and very practical for people who like to move actively - sunglasses beaded chokers to make your summertime more colorful, stylish and funky. Each model is one of a kind and with some special charms beaded in it.",
  price: 15,
  quantity: 1,
  user: user1,
  category: category_accessories
)

product_fourtheen.photos.attach(io: file_14, filename: "Sunglasses_chain", content_type: "image/jpg")
product_fourtheen.photos.attach(io: file_14_2, filename: "Sunglasses_chain_3", content_type: "image/jpg")
product_fourtheen.photos.attach(io: file_14_3, filename: "Sunglasses_chain_4", content_type: "image/jpg")
product_fourtheen.save!
puts 'Seed: Products created...'
puts 'Seed: Products created...'


puts 'Seed: Finished seeding!'
