# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(admin: true,
email: "admin@gmail.com",
password: "123456",
password_confirmation: "123456")

Brand.create!(name: "Macbook")
Brand.create!(name: "Surface")
Brand.create!(name: "Dell")
Brand.create!(name: "Razer")
Brand.create!(name: "Asus")
Brand.create!(name: "LG")
Brand.create!(name: "HP")
Brand.create!(name: "Acer")
Brand.create!(name: "Lenovo")
Brand.create!(name: "MSI")
Model.create!(name: "Macbook Pro 2014",
	brand_id: 1)
Model.create!(name: "Macbook Pro 2015",
	brand_id: 1)
Model.create!(name: "Macbook Pro 2016",
	brand_id: 1)
Model.create!(name: "Macbook Pro 2017",
	brand_id: 1)
Model.create!(name: "Macbook Pro 2018",
	brand_id: 1)
Model.create!(name: "Macbook Pro 2019",
	brand_id: 1)
Model.create!(name: "Macbook Pro 2020",
	brand_id: 1)
Model.create!(name: "Macbook Pro M1",
	brand_id: 1)
Model.create!(name: "Macbook Air 2014",
	brand_id: 1)
Model.create!(name: "Macbook Air 2015",
	brand_id: 1)
Model.create!(name: "Macbook Air 2016",
	brand_id: 1)
Model.create!(name: "Macbook Air 2017",
	brand_id: 1)
Model.create!(name: "Macbook Air 2018",
	brand_id: 1)
Model.create!(name: "Macbook Air 2019",
	brand_id: 1)
Model.create!(name: "Macbook Air 2020",
	brand_id: 1)
Model.create!(name: "Macbook Air M1",
	brand_id: 1)
Model.create!(name: "Surface Pro 4",
	brand_id: 2)
Model.create!(name: "Surface Pro 5",
	brand_id: 2)
Model.create!(name: "Surface Pro 6",
	brand_id: 2)
Model.create!(name: "Surface Pro 7",
	brand_id: 2)
Model.create!(name: "Surface Pro X",
	brand_id: 2)
Model.create!(name: "Surface Laptop 1",
	brand_id: 2)
Model.create!(name: "Surface Laptop 2",
	brand_id: 2)
Model.create!(name: "Surface Laptop 3",
	brand_id: 2)
Model.create!(name: "Surface Laptop Go",
	brand_id: 2)
Model.create!(name: "Surface Book 1",
	brand_id: 2)
Model.create!(name: "Surface Book 2",
	brand_id: 2)
Model.create!(name: "Surface Book 3",
	brand_id: 2)
Model.create!(name: "Surface Go 1",
	brand_id: 2)
Model.create!(name: "Surface Go 2",
	brand_id: 2)
Model.create!(name: "Surface Go 2",
	brand_id: 2)
Model.create!(name: "Dell XPS",
	brand_id: 3)
Model.create!(name: "Dell Latitude",
	brand_id: 3)
Model.create!(name: "Dell Inspiron",
	brand_id: 3)
Model.create!(name: "Dell Precision",
	brand_id: 3)
Model.create!(name: "Dell Alienware",
	brand_id: 3)
Model.create!(name: "HP Elitebook",
	brand_id: 4)
Model.create!(name: "HP Envy",
	brand_id: 4)
Model.create!(name: "HP Pavilion",
	brand_id: 4)
Model.create!(name: "HP Probook",
	brand_id: 4)
Model.create!(name: "HP Spectre",
	brand_id: 4)
Model.create!(name: "HP Zbook",
	brand_id: 4)
Model.create!(name: "Razer Blade Stealth 13",
	brand_id: 5)
Model.create!(name: "Razer Blade 15",
	brand_id: 5)
Model.create!(name: "Razer Blade Pro 17",
	brand_id: 5)
Model.create!(name: "Acer Aspire",
	brand_id: 6)
Model.create!(name: "Acer Nireo",
	brand_id: 6)
Model.create!(name: "Acer Predator",
	brand_id: 6)
Model.create!(name: "Acer Swift",
	brand_id: 6)
Model.create!(name: "Asus Expertbook",
	brand_id: 7)
Model.create!(name: "Asus Gaming",
	brand_id: 7)
Model.create!(name: "Asus Vivobook",
	brand_id: 7)
Model.create!(name: "Asus Zenbook",
	brand_id: 7)
Model.create!(name: "Lenovo Ideapad",
	brand_id: 8)
Model.create!(name: "Lenovo Legion",
	brand_id: 8)
Model.create!(name: "Lenovo Thinkpad",
	brand_id: 8)
Model.create!(name: "Lenovo Thinkpad T",
	brand_id: 8)
Model.create!(name: "Lenovo Thinkpad X",
	brand_id: 8)
Model.create!(name: "Lenovo Workstation",
	brand_id: 8)
Model.create!(name: "LG Gram",
	brand_id: 9)
Model.create!(name: "MSI Gaming",
	brand_id: 10)
