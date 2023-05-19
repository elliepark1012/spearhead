# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Brand.create(name: "Supreme", 
about:"Supreme is an American clothing and skateboarding lifestyle brand established in New York City in April 1994. 
The brand aims to appeal to youth culture in general as well as the skateboarding and hip hop scenes specifically. 
The company makes skateboards in addition to clothing and accessories.", 
website:"https://us.supreme.com/")  

Brand.create(name: "Miu Miu",
about: "Miu Miu is an Italian high fashion women's clothing and accessory brand and a fully owned subsidiary of Prada. 
It is headed by Miuccia Prada and headquartered in Paris, France.", website: "https://www.miumiu.com/us/en.html")

Brand.create(name: "Carhatt", 
about: "Carhartt, Inc. is an American apparel company founded in 1889, 
known for heavy-duty working clothes such as jackets, coats, overalls, coveralls, vests, shirts, jeans, dungarees, 
fire-resistant clothing and hunting apparel. Carhartt remains a family-owned company, 
owned by the descendants of founder Hamilton Carhartt, with its headquarters in Dearborn, Michigan.",
website: "https://www.carhartt.com/")

Brand.create(name: "Ami",
about: "Ami Paris est une entreprise française de prêt-à-porter et d’accessoires fondée par Alexandre Mattiussi fin 2010.",
website: "https://www.amiparis.com/us/")

Brand.create(name: "Jacquemus",
about:"Founded by Simon Porte Jacquemus in 2009, Jacquemus is the brand that first caught the attention of Paris’ fashion 
elite and later the whole world. The label has taken the fashion world by storm, 
considered by many the brightest star among new French fashion houses.", 
website: "https://www.jacquemus.com/en_us?gclid=CjwKCAjw04yjBhApEiwAJcvNoSguPc8b18N1j29fu7HbBHDIAJgZl8c59mdIqmtT-sP6Cft1cKoFThoCEawQAvD_BwE")


 Hat.create(name: "Supreme Gonz Poems Camp Cap White", price: 82, size:"One Size", image:"https://image.goat.com/transform/v1/attachments/product_template_additional_pictures/images/088/283/229/original/1204057_01.jpg.jpeg?action=crop&width=800", brand_id:1)
 Hat.create(name: "Supreme Crochet Edge Ball Hat Black", price: 167, size:"M/L", image:"https://image.goat.com/transform/v1/attachments/product_template_additional_pictures/images/086/119/176/original/1167148_01.jpg.jpeg?action=crop&width=800", brand_id:1)
 Hat.create(name: "Miu Miu Check Print Bucket Hat Red", price: 575, size:"XXS", image:"https://image.goat.com/transform/v1/attachments/product_template_additional_pictures/images/088/437/195/original/1204181_01.jpg.jpeg?action=crop&width=500", brand_id:2)
 Hat.create(name: "Miu Miu Classic Cap Bordeaux", price: 480, size:"XXXL", image:"https://image.goat.com/transform/v1/attachments/product_template_additional_pictures/images/088/437/190/original/1204183_01.jpg.jpeg?action=crop&width=800", brand_id:2)
 Hat.create(name: "Marni x Carhartt WIP Women's Hat Forest Green", price: 223, size:"One Size", image:"https://image.goat.com/transform/v1/attachments/product_template_additional_pictures/images/083/971/857/original/1118046_01.jpg.jpeg?action=crop&width=500", brand_id:3)
 Hat.create(name: "Carhartt WIP Madera Cap Jasper/Black", price: 65, size:"One Size", image:"https://image.goat.com/transform/v1/attachments/product_template_additional_pictures/images/085/166/941/original/1143131_01.jpg.jpeg?action=crop&width=500", brand_id:3)
 Hat.create(name: "Ami Embroidered Cap Black", price: 100, size:"One Size", image:"https://image.goat.com/transform/v1/attachments/product_template_additional_pictures/images/088/283/646/original/1202956_01.jpg.jpeg?action=crop&width=500", brand_id:4)
 Hat.create(name: "Ami Tonal ADC Embroidery Cap Candy Pink", price: 180, size:"One Size", image:"https://image.goat.com/transform/v1/attachments/product_template_additional_pictures/images/087/982/496/original/1196581_01.jpg.jpeg?action=crop&width=500", brand_id:4)
 Hat.create(name: "Jacquemus Le Bob Bordado Khaki", price: 471, size:"58", image:"https://image.goat.com/transform/v1/attachments/product_template_additional_pictures/images/087/882/984/original/1161152_01.jpg.jpeg?action=crop&width=800", brand_id:5)
 Hat.create(name: "Jacquemus Le Bob Artichaut Off White", price: 174, size:"56", image:"https://image.goat.com/transform/v1/attachments/product_template_additional_pictures/images/085/868/882/original/919753_01.jpg.jpeg?action=crop&width=500", brand_id:5)
 
 User.create(name:"ellie", email:"no@opt.com", password:"1234")
 20.times{User.create(name:Faker::Internet.username, email:Faker::Internet.email, password:Faker::Internet.password)}
 Order.create(amount:32, hat_id:1, user_id:1)
 Order.create(amount:33333, hat_id:1, user_id:1)
 Order.create(amount:30, hat_id:2, user_id:5)
 Order.create(amount:50, hat_id:3, user_id:3)
 Order.create(amount:450, hat_id:10, user_id:7)