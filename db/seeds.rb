Supplier.create!([
  {name: "General Electric", email: "donotreply@ge.com", phone_number: "222-2222"},
  {name: "Petsmart", email: "pets@mart.com", phone_number: "555-5555"}
])
Product.create!([
  {name: "Fishing Pole", price: "22.0", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0mES1rcKvqbm2Hayu97w9oIr_4ALkvHeLmg&usqp=CAU", description: "the everyday fishing pole for the everyday person", inventory_count: "10", supplier_id: 1},
  {name: "Tank", price: "500000.0", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB0uT4MTL7L2aJhMCeKdHA7mr4GUXP5_nMUA&usqp=CAU", description: "a tank for every occassion!", inventory_count: "1", supplier_id: 1},
  {name: "car", price: "40000.0", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWXIltEVc7kNgO8dAYLD63WDk6A5OwQDU2QQ&usqp=CAU", description: "go vroom vroom", inventory_count: "20", supplier_id: 1},
  {name: "train", price: "99999999.0", image_url: "https://images-na.ssl-images-amazon.com/images/I/71fFp-IVerL._AC_SL1500_.jpg", description: "go choo choo", inventory_count: "4", supplier_id: 1},
  {name: "tent", price: "255.0", image_url: "https://media-cldnry.s-nbcnews.com/image/upload/newscms/2021_14/3462489/210406-camping-tent-bd-2x1.jpg", description: "go camping", inventory_count: "15", supplier_id: 1},
  {name: "rabbit", price: "50.0", image_url: "https://cf.ltkcdn.net/small-pets/images/orig/241114-1600x1030-flemish-giant-rabbit.jpg", description: "a big rabbit for you and your family", inventory_count: "5", supplier_id: 2}
])

#mass assign supplier_ids

#get all products that don't have a supplier id
# products = Product.where(supplier_id:nil)

#give each of them a random number id
# products.each do |product|
#   random_supplier_id = Supplier.all.sample.id
#   product.supplier_id = random_supplier_id
#   product.save
