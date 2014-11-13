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

item_color_list = [
    "Blue",
    "Green",
    "Black",
    "Charcoal",
    "Khaki",
    "Slate",
    "Corn Blue",
    "Grey",
    "Red",
    "Purple"
]

categories = [
    "Hat",
    "Shirt",
    "Armor",
    "Dress Pants",
    "Boots"
]

look_name_list = [
    "Fall Look",
    "Winter Look",
    "Generic Dudebro",
    "What...! No!",
    "Pretentious Piano Player",
    "Tuxedo Master",
    "God",
    "Fashionable Hobo"
]

categories.each do |category|
  ItemCategory.create( name: category )
end

item_color_list.each do |color|
  ItemColor.create( name: color )
end

def random_or_nil()
  if rand(1) == 1
    return rand(9)
  else
    return nil
  end
end

for i in 1..300 do
  Item.create( name: description_list.sample + " " + color_list.sample() + " " + item_list.sample(),
               sku: "abc" + rand(50000).to_s,
               msrp: rand(500),
               color_hex: rand(max_int),
               sale: false,
               primary_color_id: rand(8)+1,
               secondary_color_id: rand(8)+1,
               item_category_id: rand(5+1)
  )
end

look_name_list.each do |name|
  look = Look.create( name: name )
  look.budgets.create( description: "Hello there.", popularity: 10, original: true )
  look.budgets.create( description: "Hello again!.", popularity: 10, original: false )
  look.budgets.create( description: "No one loves me....", popularity: 1, original: false )
  look.budgets.each do |budget|
    for i in 1..5 do
      budget.budget_items.create( item_id: 2, order: i )
    end
  end
end