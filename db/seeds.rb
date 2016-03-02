# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
b1 = Brewery.create name:"Koff", year:1897
b2 = Brewery.create name:"Malmgard", year:2001
b3 = Brewery.create name:"Weihenstephaner", year:1042

lager = Style.create name:"Lager"
paleAle = Style.create name:"Pale Ale"
porter = Style.create name:"Porter"
weizen = Style.create name:"Weizen"

b1.beers.create name:"Iso 3", style:lager
b1.beers.create name:"Karhu", style:lager
b1.beers.create name:"Tuplahumala", style:lager
b2.beers.create name:"Huvila Pale Ale", style:paleAle
b2.beers.create name:"X Porter", style:porter
b3.beers.create name:"Hefeweizen", style:weizen
b3.beers.create name:"Helles", style:lager

users = 200           # jos koneesi on hidas, riittää esim 100
breweries = 100       # jos koneesi on hidas, riittää esim 50
beers_in_brewery = 40
ratings_per_user = 30
