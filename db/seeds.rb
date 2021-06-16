# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product = Product.new(name: "Fishing Pole", price: 22.95, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0mES1rcKvqbm2Hayu97w9oIr_4ALkvHeLmg&usqp=CAU", description: "every fisherman's every-fishing pole")


product = Product.new(name: "Tank", price: 500000, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB0uT4MTL7L2aJhMCeKdHA7mr4GUXP5_nMUA&usqp=CAU", description: "a tank for every occassion!")


product = Product.new(name: "baseball glove", price: 15.25, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOwDFJ8gvqwfFuayLmnitNHRW5QLKqmzMMAw&usqp=CAU", description: "the baseball glove you've always wanted")

