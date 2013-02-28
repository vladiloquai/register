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

services = Service.create([{name: 'manos full',         		value: 7000},
	                       {name: 'manos express',      		value: 5500},
	                       {name: 'pies full',          		value: 11900},
	                       {name: 'promo manos y pies', 		value: 15900},
	                       {name: 'promo permanente',   		value: 30000},
	                       {name: 'manos permanente',   		value: 17900},
	                       {name: 'pies permanente',    		value: 18900},
	                       {name: 'cambio esmalte',     		value: 2900},
	                       {name: 'diseno',                     value: 2900},
	                       {name: 'depilacion zona facial',     value: 3000},
	                       {name: 'depilacion axila',           value: 3500},
	                       {name: 'depilacion pierna completa', value: 6000},
	                       {name: 'brazos', 					value: 4000},
	                       {name: 'media pierna', 				value: 4500},
	                       {name: 'pecho', 						value: 6000},
	                       {name: 'abdomen', 					value: 6000},
	                       {name: 'rebaje', 					value: 4500}
	                       ])
