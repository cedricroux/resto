# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Type.destroy_all
t1 = Type.create :name => 'Restaurants'
t2 = Type.create :name => 'Dessert'
t3 = Type.create :name => 'Coffee & Tea'
t4 = Type.create :name => 'Bakeries'
t5 = Type.create :name => 'Bars & Pubs'
