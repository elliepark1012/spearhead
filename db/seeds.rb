# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


h1 = Hat.create(name: "firsthat", price: 65, size:"Women's M", image:"", brand_id:1)
b1 = Brand.create(name: "brand1", about:"from korea", contact:"dontcontactme")
u1 = User.create(name:"ellie", email:"no@opt.com", password:"1234")
 Order.create(amount:32, hat_id:1, user_id:1)
 Order.create(amount:33333, hat_id:1, user_id:1)
