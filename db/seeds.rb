# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create({email:      "katalina.crespo@gmail.com",
	                 first_name: "Katalina",
	                 last_name:  "Crespo",
	                 password: 123456})

services = Service.create([{name: 'manos', value: 4000},
	                       {name: 'pies', value: 4000},
	                       {name: 'brazo', value: 3500}])
