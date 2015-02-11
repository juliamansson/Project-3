# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Flavour.delete_all
Order.delete_all


flavours = Flavour.create!([
  {name: 'Vanilla', section: :frosting}, 
  {name: 'Chocolate', section: :frosting}, 
  {name: 'Oreo', section: :frosting}, 
  {name: 'Chocolate', section: :topping}, 
  {name: 'Sprinkles', section: :topping}, 
  {name: 'Butterscotch', section: :topping}, 
  {name: 'Fruit', section: :base}, 
  {name: 'Victoria Sponge', section: :base}, 
  {name: 'Red Velvet', section: :base} 
  ])
