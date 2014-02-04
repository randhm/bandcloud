# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


a = Artist.create band_name: 'Band E', email: 'bye@bye.com', password: 'password', password_confirmation: 'password'

a.role = :admin

a.save
 #remember, you can't mass assign 'role' because it's not an attr_accessible and you don't want it to be, otherwise anyone could set their role to be admin
