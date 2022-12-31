CustomerType.destroy_all
Customer.destroy_all
Wetsuit.destroy_all
Sport.destroy_all
Product.destroy_all
Review.destroy_all


Women = CustomerType.create(customer_type: "Women")
Men = CustomerType.create(customer_type: "Men")
Child = CustomerType.create(customer_type: "Child")

Triathalon = Sport.create(name: "triathalon")
Openwater = Sport.create(name: "openwater")
Swimrun = Sport.create(name: "swimrun")
Freediving = Sport.create(name: "freediving")
Surf = Sport.create(name: "surf")
Swimming = Sport.create(name: "swimming")

Triathalon_suit = Wetsuit.create(is_wetsuit: true, category: "triathalon")
Openwater_suit = Wetsuit.create(is_wetsuit: true, category: "openwater")
Surf_suit = Wetsuit.create(is_wetsuit: true, category: "surf")
Not_a_suit = Wetsuit.create(is_wetsuit: false, category: "other")

P1 = Product.create(name: "Apex Flow Men's Triathalon Suit", image_address: "https://www.orca.com/uploads/products/large/mn11tt42-01-orca-apex-flow-men-triathlon-wetsuit-silver-total_750x1000_750x1000.jpg", price: 975.00, quantity: 100, customer_type: Men, sport: Triathalon, wetsuit: Triathalon_suit)

P2 = Product.create(name: "RS1 Thermal WetSuit", image_address: "https://www.orca.com/uploads/products/large/ln6ttt01-01-orca-openwater-rs1-thermal-women-wetsuit-black_750x1000.jpg", price: 469.00, quantity: 50, customer_type: Women, sport: Openwater, wetsuit: Openwater_suit)

P3 = Product.create(name: "Aesir Thermal Swimrun Wetsuit", image_address: "https://www.orca.com/uploads/products/large/mn71tt01-01-orca-aesir-thermal-women-swimrun-wetsuit-black_750x1000.jpg", price: 499.00, quantity: 10, customer_type: Women, sport: Swimrun, wetsuit: Triathalon_suit)

P4 = Product.create(name: "Openwater SQUAD Junior Wetsuit", image_address: "https://www.orca.com/uploads/products/large/ln97tt01-01-orca-openwater-squad-junior-wetsuit-black_750x1000.jpg", price: 169.00, quantity: 10, customer_type: Child, sport: Openwater, wetsuit: Openwater_suit)

P5 = Product.create(name: "RS1 Jammer Men's Swimsuit", image_address: "https://www.orca.com/uploads/products/large/ms27tt01-01-orca-rs1-jammer-men-swimsuit-black_750x1000.jpg", price: 169.00, quantity: 170, customer_type: Men, sport: Swimming, wetsuit: Not_a_suit)

P6 = Product.create(name: "Apex Float Men's Triathalon Wetsuit", image_address: "https://www.orca.com/uploads/products/large/mn13tt44-01-orca-apex-float-men-triathlon-wetsuit-red-buoyancy_750x1000.jpg", price: 619.00, quantity: 120, customer_type: Men, sport: Triathalon, wetsuit: Triathalon_suit)

P7 = Product.create(name: "Apex Flex Men's Triathalon Wetsuit", image_address: "https://www.orca.com/uploads/products/large/mn12tt43-01-orca-apex-flex-men-triathlon-wetsuit-blue-flex_750x1000.jpg", price: 719.00, quantity: 95, customer_type: Men, sport: Triathalon, wetsuit: Triathalon_suit)

P8 = Product.create(name: "Athlex Flow Men's Triathlon Wetsuit", image_address: "https://www.orca.com/uploads/products/large/mn14tt42-01-orca-athlex-flow-men-triathlon-wetsuit-silver-total_750x1000.jpg", price: 519.00, quantity: 115, customer_type: Men, sport: Triathalon, wetsuit: Triathalon_suit)

P9 = Product.create(name: "Athlex Flex Men's Triathlon Wetsuit", image_address: "https://www.orca.com/uploads/products/large/mn15tt43-01-orca-athlex-flex-men-triathlon-wetsuit-blue-flex_750x1000.jpg", price: 399.00, quantity: 135, customer_type: Men, sport: Triathalon, wetsuit: Triathalon_suit)

P10 = Product.create(name: "Athlex Float Men Triathlon Wetsuit", image_address: "https://www.orca.com/uploads/products/large/mn16tt44-01-orca-athlex-float-men-triathlon-wetsuit-red-buoyancy_750x1000.jpg", price: 299.00, quantity: 84, customer_type: Men, sport: Triathalon, wetsuit: Triathalon_suit)

P11 = Product.create(name: "Openwater RS1 Thermal Men's Wetsuit", image_address: "https://www.orca.com/uploads/products/large/ln2ttt01-01-orca-openwater-rs1-thermal-men-wetsuit-black_750x1000.jpg", price: 469.00, quantity: 115, customer_type: Men, sport: Openwater, wetsuit: Openwater_suit)

P12 = Product.create(name: "Openwater RS1 SW Men's Wetsuit", image_address: "https://www.orca.com/uploads/products/large/kn20tt01-01-orca-openwater-rs1-sw-men-wetsuit-black_750x1000.jpg", price: 419.00, quantity: 72, customer_type: Men, sport: Openwater, wetsuit: Openwater_suit)

P13 = Product.create(name: "Openwater Perform Men's Wetsuit", image_address: "https://www.orca.com/uploads/products/large/ln2ftt01-01-orca-openwater-perform-men-wetsuit-black_750x1000.jpg", price: 399.00, quantity: 123, customer_type: Men, sport: Openwater, wetsuit: Openwater_suit)

P14 = Product.create(name: "Openwater RS1 Sleeveless Men's Wetsuit", image_address: "https://www.orca.com/uploads/products/large/ln21tt01-01-orca-openwater-rs1-sleeveless-men-wetsuit-black_750x1000.jpg", price: 259.00, quantity: 82, customer_type: Men, sport: Openwater, wetsuit: Openwater_suit)

P15 = Product.create(name: "Openwater Core TRN Men's Wetsuit", image_address: "https://www.orca.com/uploads/products/large/ln28tt01-01-orca-openwater-core-trn-men-wetsuit-black_750x1000.jpg", price: 249.00, quantity: 56, customer_type: Men, sport: Openwater, wetsuit: Openwater_suit)

P16 = Product.create(name: "Openwater RS1 Top Men's Wetsuit", image_address: "https://www.orca.com/uploads/products/large/ln22tt01-01-orca-openwater-rs1-top-men-wetsuit-black_750x1000.jpg", price: 249.00, quantity: 137, customer_type: Men, sport: Openwater, wetsuit: Openwater_suit)

P17 = Product.create(name: "Openwater RS1 Bottom Men's Wetsuit", image_address: "https://www.orca.com/uploads/products/large/ln23tt01-01-orca-openwater-rs1-bottom-men-wetsuit-black_750x1000.jpg", price: 219.00, quantity: 143, customer_type: Men, sport: Openwater, wetsuit: Openwater_suit)

P18 = Product.create(name: "Openwater Core Hi-Vis Men's Wetsuit", image_address: "https://www.orca.com/uploads/products/large/ln27tt01-01-orca-openwater-core-hi-vis-men-wetsuit-black_750x1000.jpg", price: 209.00, quantity: 129, customer_type: Men, sport: Openwater, wetsuit: Openwater_suit)

P19 = Product.create(name: "Openwater Core Swimskin Men's Wetsuit", image_address: "https://www.orca.com/uploads/products/large/ln2stt01-01-orca-openwater-core-swimskin-men-wetsuit-black_750x1000.jpg", price: 179.00, quantity: 210, customer_type: Men, sport: Openwater, wetsuit: Openwater_suit)

P20 = Product.create(name: "Tango 4:3 Men Surf Wetsuit", image_address: "https://www.orca.com/uploads/products/large/mna1tt01-01-orca-tango-4-3-men-surf-wetsuit-black_750x1000.jpg", price: 399.00, quantity: 46, customer_type: Men, sport: Surf, wetsuit: Surf_suit)

P21 = Product.create(name: "Tango 3:2 Men Surf Wetsuit", image_address: "https://www.orca.com/uploads/products/large/mna2tt01-01-orca-tango-3-2-men-surf-wetsuit-black_750x1000.jpg", price: 349.00, quantity: 68, customer_type: Men, sport: Surf, wetsuit: Surf_suit)

P22 = Product.create(name: "", image_address: "", price: 169.00, quantity: , customer_type: , sport: , wetsuit: )

P23 = Product.create(name: "", image_address: "", price: 169.00, quantity: , customer_type: , sport: , wetsuit: )

P24 = Product.create(name: "", image_address: "", price: 169.00, quantity: , customer_type: , sport: , wetsuit: )

P25 = Product.create(name: "", image_address: "", price: 169.00, quantity: , customer_type: , sport: , wetsuit: )

P26 = Product.create(name: "", image_address: "", price: 169.00, quantity: , customer_type: , sport: , wetsuit: )

P27 = Product.create(name: "", image_address: "", price: 169.00, quantity: , customer_type: , sport: , wetsuit: )

P28 = Product.create(name: "", image_address: "", price: 169.00, quantity: , customer_type: , sport: , wetsuit: )

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
