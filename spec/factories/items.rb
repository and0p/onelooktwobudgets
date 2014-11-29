require 'faker'

FactoryGirl.define do
    factory :item do |f|
      f.name { Faker::Commerce.product_name }
      f.sku { Faker::Code.isbn }
      f.msrp {Faker::Commerce.price }
      f.item_category { rand(5)+1 }
      f.primary_color {rand(6)+1 }
    end
end