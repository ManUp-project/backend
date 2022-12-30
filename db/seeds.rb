CustomerType.destroy_all
Customer.destroy_all
Wetsuit.destroy_all
Sport.destroy_all
Product.destroy_all
Review.destroy_all


Woman = CustomerType.create(customer_type: "woman")
Man = CustomerType.create(customer_type: "man")
Child = CustomerType.create(customer_type: "child")

Triathalon = Sport.create(name: "triathalon")
Openwater = Sport.create(name: "openwater")
Swimrun = Sport.create(name: "swimrun")
Freediving = Sport.create(name: "freediving")
Surf = Sport.create(name: "surf")
Swimming = Sport.create(name: "swimming")

Triathalon_suit = Wetsuit.create(is_wetsuit: true, category: "triathalon")
Openwater_suit = Wetsuit.create(is_wetsuit: true, category: "openwater")
Surf_suit = Wetsuit.create(is_wetsuit: true, category: "surf")
Not_a_suit = Wetsuit.create(is_wetsuit: false, category: "swimming")

P1 = Product.create(name: "Apex Flow", image_address: "https://www.orca.com/uploads/products/large/mn11tt42-01-orca-apex-flow-men-triathlon-wetsuit-silver-total_750x1000_750x1000.jpg", price: 975.00, quantity: 100, customer_type: Man, sport: Triathalon, wetsuit: Triathalon_suit)

P2 = Product.create(name: "RS1 Thermal WetSuit", image_address: "https://www.orca.com/uploads/products/large/ln6ttt01-01-orca-openwater-rs1-thermal-women-wetsuit-black_750x1000.jpg", price: 469.00, quantity: 50, customer_type: Woman, sport: Openwater, wetsuit: Openwater_suit)

P3 = Product.create(name: "Aesir Thermal Swimrun Wetsuit", image_address: "https://www.orca.com/uploads/products/large/mn71tt01-01-orca-aesir-thermal-women-swimrun-wetsuit-black_750x1000.jpg", price: 499.00, quantity: 10, customer_type: Woman, sport: Swimrun, wetsuit: Triathalon_suit)

P4 = Product.create(name: "Openwater SQUAD Junior Wetsuit", image_address: "https://www.orca.com/uploads/products/large/ln97tt01-01-orca-openwater-squad-junior-wetsuit-black_750x1000.jpg", price: 169.00, quantity: 10, customer_type: Child, sport: Openwater, wetsuit: Openwater_suit)

P5 = Product.create(name: "RS1 Jammer Men's Swimsuit", image_address: "https://www.orca.com/uploads/products/large/ms27tt01-01-orca-rs1-jammer-men-swimsuit-black_750x1000.jpg", price: 169.00, quantity: 170, customer_type: Man, sport: Swimming, wetsuit: Not_a_suit)

C1 = Customer.create(name: "David")
C2 = Customer.create(name: "Mark")
C3 = Customer.create(name: "Andrew")

R1 = Review.create(rating: 3, customer_id: C1, product_id: P5)
R2 = Review.create(rating: 5, customer_id: C1, product_id: P4)
R3 = Review.create(rating: 1, customer_id: C2, product_id: P3)
R4 = Review.create(rating: 3, customer_id: C2, product_id: P1)
R5 = Review.create(rating: 2, customer_id: C2, product_id: P5)
R6 = Review.create(rating: 5, customer_id: C3, product_id: P5)
R7 = Review.create(rating: 5, customer_id: C3, product_id: P4)
R8 = Review.create(rating: 4, customer_id: C3, product_id: P2)
