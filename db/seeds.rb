# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
   Book.create([{title: 'LOVE ME', author: 'Marquez', description: 'Thing is always different', amazon_id: '6794784', rating: 4, finished_on: 10.days.ago }, 
              {title: 'Hate ME', author: 'Marquez sukanta', description: 'Thing is always different in manner', amazon_id: '67940934', rating: 3, finished_on: 1.day.ago}])
