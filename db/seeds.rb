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
  {name: 'Chocolate', section_id: 1, image_name: "chocolatebase"}, 
  {name: 'Vanilla', section_id: 1, image_name: "vanillabase"}, 
  {name: 'Red Velvet', section_id: 1, image_name: "redvelvetbase"},

  {name: 'Chocolate', section_id: 2, image_name: 'chocolate'}, 
  {name: 'Cream Cheese', section_id: 2, image_name: "creamcheese"},

  {name: 'Oreos', section_id: 3, image_name: 'oreo'}, 
  {name: 'Butterflies', section_id: 3, image_name: "butterfly"}, 
  {name: 'Caramel Popcorn', section_id: 3, image_name: ''},
 
  
  ])
