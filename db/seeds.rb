# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create(name: 'Admin', email: 'admin@example.com', password: '123456', password_confirmation: '123456', admin: true)


rest1 = Restaurant.create(
	name: 'Дастархон',
  	description: 'Фастфуд',  
  	image:  File.new("#{Rails.root}/public/uploads/dast.png")

)

rest2 = Restaurant.create(
	name: 'Тюбетейка',
  	description: 'Европейская кухня',  
  	image:  File.new("#{Rails.root}/public/uploads/tubiteika.png")

)
cat1 = Category.create(
	name: 'Фастфуд',
  	description: 'Еда быстрого приготовления', 
  	restaurant_id: rest1.id 

)
cat2 = Category.create(
	name: 'Блюдо из мяса',
  	description: 'Разные блюда', 
  	restaurant_id: rest2.id 

)
Food.create(
	name:'Шаурма из говядины',
	description: 'свежие овощи и мясо',
	price: '120',
	category_id: cat1.id,
	restaurant_id: rest1.id ,
	image:  File.new("#{Rails.root}/public/uploads/shaurma")
	)

Food.create(
	name:'Гамбургер из говядины',
	description: 'свежие овощи и мясо',
	price: '140',
	image:  File.new("#{Rails.root}/public/uploads/22"),
	category_id: cat1.id,
	restaurant_id: rest1.id 
	)

Food.create(
	name:'Отбивная из телятины',
	description: 'свежие овощи и мясо',
	price: '540',
	image:  File.new("#{Rails.root}/public/uploads/16"),
	category_id: cat2.id,
	restaurant_id: rest2.id
	)

Food.create(
	name:'Отбивная из мраморной говядины',
	description: 'свежие овощи и мясо',
	price: '790',
	image:  File.new("#{Rails.root}/public/uploads/46"),
	category_id: cat2.id,
	restaurant_id: rest2.id
	)