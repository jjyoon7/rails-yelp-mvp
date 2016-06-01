# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Restaurant.delete_all
Restaurant.create!( name: "ocha", address: "zeburgerdijk", phone: "0614619283", category: "thai")
Restaurant.create!( name: "hakata", address: "rai", phone: "0615243536", category: "ramen")
Restaurant.create!( name: "rijsel", address: "wibaustraat", phone: "0615423787", category: "french")
