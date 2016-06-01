# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Restaurant.destroy_all

Restaurant.create([{ name:'Burger & Lobster', adress: 'London', phone_number: 0476536552, category: 'french' }])
Restaurant.create([{ name:'Yaza', adress: 'Iran', phone_number: 0476536552, category: 'japanese' }])
Restaurant.create([{ name:'le colonel', adress: 'Brussels', phone_number: 0476536552, category: 'belgian' }])
Restaurant.create([{ name:'Aglio y olio', adress: 'Sienna', phone_number: 0476536552, category: 'french' }])
Restaurant.create([{ name:'yang zu', adress: 'hongkingkong', phone_number: 0476536552, category: 'chinese' }])
