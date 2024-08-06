//
//  Constants.swift
//  ShoppingApp
//
//  Created by poonam mittal on 04/08/24.
//

var product1: Product = .init(title: "Casual Extended Sleeves Color Block Women oraange top", price: 255, description: "Orange and grey regular top Colourblocked V-neck, long, extended sleeves Waist tie-ups detail knitted", images: ["P01_01", "P01_02", "P01_03", "P01_04"], categories: .TShirt, gender: .Female)


let product2 = Product(
    title: "Casual Regular Sleeves Solid Women Dark Green Top",
    price: 255,
    description: "Sleek black evening dress with a deep V-neck and lace detailing. Perfect for formal events.",
    images: ["P02_01", "P02_02", "P02_03", "P02_04"],
    categories: .TShirt,
    gender: .Female
)

let product3 = Product(
    title: "Casual Cape Sleeves Color Block Women Blue Top",
    price: 349,
    description: "Comfortable and stylish slim fit blue jeans with a faded wash and five-pocket design and five-pocket design.",
    images: ["P03_01", "P03_02", "P03_03", "P03_04"],
    categories: .TShirt,
    gender: .Female
)

let product4 = Product(
    title: "Floral Print Summer T-Shirt with the polkadots on its surface",
    price: 199,
    description: "Lightweight summer skirt with a colorful floral print and an elastic waistband for a comfortable fit.",
    images: ["P04_01", "P04_02", "P04_03", "P04_04"],
    categories: .TShirt,
    gender: .Female
)

let product5 = Product(
    title: "Casual Unisex Hoodie for the womens and gives elegant looks",
    price: 299,
    description: "Cozy unisex hoodie available in various colors with a kangaroo pocket and adjustable drawstring hood.",
    images: ["P05_01", "P05_02", "P05_03", "P05_04"],
    categories: .TShirt,
    gender: .Female
)

let product6 = Product(
    title: "Classic White T-Shirt for the women , formak T-Shirt",
    price: 99,
    description: "Basic white T-shirt made from soft, breathable cotton. A wardrobe essential for any casual outfit.",
    images: ["P06_01", "P06_02", "P06_03", "P06_04"],
    categories: .TShirt,
    gender: .Female
)

let hastags: [String] = ["#2024", "#spring", "#collection", "#fall", "#dress", "#autumncollection", "#openfashion"]


var cartItems: [CartItem] = [.init(product: product1, count: 1), .init(product: product2, count: 2),
                             .init(product: product3, count: 1)

]

var products:[Product] = [product1, product2, product3, product4, product5, product6]

