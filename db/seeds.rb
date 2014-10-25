# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

max_int = 16777215

item_list = [
    "Shirt",
    "Pants",
    "Shoes",
    "Tie",
    "Hat"
]

color_list = [
    "Blue",
    "Red",
    "Lavender",
    "Pearl White",
    "Joker Purple",
    "Vomit Green",
    "Burgandy"
]

description_list = [
    "Ugly",
    "Plaid",
    "Double-breasted",
    "Alien",
    "Plate mail",
    "+5 Int",
    "Brave",
    "Wool",
    "Oxford",
    "Silk"
]

for i in 1..300 do
  Item.create( name: description_list.sample + " " + color_list.sample() + " " + item_list.sample(),
               sku: "abc" + rand(50000).to_s,
               msrp: rand(500),
               color_hex: rand(max_int),
               sale: false
  )
end