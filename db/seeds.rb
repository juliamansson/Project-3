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
  {name: 'Chocolate', section: :base}, 
  {name: 'Vanilla', section: :base}, 
  {name: 'Red Velvet', section: :base},
  {name: 'Banana', section: :base},
  {name: 'Carrot', section: :base},

  {name: 'Vanilla', section: :frosting}, 
  {name: 'Chocolate', section: :frosting}, 
  {name: 'Oreo', section: :frosting},
  {name: 'Cream Cheese', section: :frosting},
  {name: 'Peanut Butter', section: :frosting},


  {name: 'Sprinkles', section: :topping}, 
  {name: 'Oreos', section: :topping}, 
  
  {name: 'Banana', section: :topping}, 
  {name: 'Chocolate Chips', section: :topping},
  {name: 'None', section: :topping},  
  
  ])
