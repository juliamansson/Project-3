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
  {name: 'Chocolate', section_id: 1}, 
  {name: 'Vanilla', section_id: 1}, 
  {name: 'Red Velvet', section_id: 1},
  {name: 'Banana', section_id: 1},
  {name: 'Carrot', section_id: 1},

  {name: 'Vanilla', section_id: 2}, 
  {name: 'Chocolate', section_id: 2}, 
  {name: 'Oreo', section_id: 2},
  {name: 'Cream Cheese', section_id: 2},
  {name: 'Peanut Butter', section_id: 2},


  {name: 'Sprinkles', section_id: 3}, 
  {name: 'Oreos', section_id: 3}, 
  {name: 'Banana', section_id: 3}, 
  {name: 'Chocolate Chips', section_id: 3},
  {name: 'None', section_id: 3},  
  
  ])
