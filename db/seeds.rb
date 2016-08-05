Image.create!([
  {yarn_id: 2, image_url: "http://d2q9kw5vp0we94.cloudfront.net/Yarn_Color_Detail/26444.jpg"},
  {yarn_id: 3, image_url: "http://d2q9kw5vp0we94.cloudfront.net/Yarn_Color_Detail/24914.jpg"},
  {yarn_id: 10, image_url: "http://d2q9kw5vp0we94.cloudfront.net/Yarn_Color_Detail/26140.jpg"},
  {yarn_id: 19, image_url: "http://d2q9kw5vp0we94.cloudfront.net/Yarn_Color_Detail/26685.jpg"},
  {yarn_id: 20, image_url: "http://d2q9kw5vp0we94.cloudfront.net/Yarn_Color_Detail/26441.jpg"},
  {yarn_id: 21, image_url: "http://d2q9kw5vp0we94.cloudfront.net/Yarn_Color_Detail/26867.jpg"},
  {yarn_id: 22, image_url: "http://d2q9kw5vp0we94.cloudfront.net/Yarn_Color_Detail/26434.jpg"},
  {yarn_id: 23, image_url: "http://d2q9kw5vp0we94.cloudfront.net/Yarn_Color_Detail/26865.jpg"},
  {yarn_id: 24, image_url: "http://d2q9kw5vp0we94.cloudfront.net/Yarn_Color_Detail/27081.jpg"},
  {yarn_id: 2, image_url: "http://d2q9kw5vp0we94.cloudfront.net/regular/26711.jpg"},
  {yarn_id: 23, image_url: "https://d2q9kw5vp0we94.cloudfront.net/regular/26865.jpg"}
])
Order.create!([
  {user_id: nil, yarn_id: 2, quantity: 24, subtotal: nil, tax: nil, total: nil},
  {user_id: nil, yarn_id: 20, quantity: 4, subtotal: nil, tax: nil, total: nil},
  {user_id: nil, yarn_id: 19, quantity: 4, subtotal: "44.0", tax: "1.08", total: "0.0"},
  {user_id: nil, yarn_id: 19, quantity: 4, subtotal: "44.0", tax: "1.08", total: "45.08"},
  {user_id: nil, yarn_id: 19, quantity: 4, subtotal: "44.0", tax: "1.08", total: "45.08"},
  {user_id: nil, yarn_id: 19, quantity: 4, subtotal: "44.0", tax: "1.08", total: "45.08"},
  {user_id: 1, yarn_id: 19, quantity: 5, subtotal: "55.0", tax: "1.08", total: "56.08"},
  {user_id: 1, yarn_id: 19, quantity: 5, subtotal: "55.0", tax: "1.08", total: "56.08"},
  {user_id: 2, yarn_id: 21, quantity: 5, subtotal: "60.0", tax: "1.17", total: "61.17"},
  {user_id: 2, yarn_id: 21, quantity: 9, subtotal: "108.0", tax: "1.17", total: "109.17"}
])
Supplier.create!([
  {name: "Sheepers Creepers", email: "ewe@sheepers.com", phone: "(777) 789-7890"},
  {name: "Wooly Bully", email: "nelson@woolybully.com", phone: "(333) 234-2345"},
  {name: "The Stripery", email: "alice@stripery.com", phone: "(444) 456-4567"}
])
User.create!([
  {name: "Odo", email: "odo@ds9.sf", password_digest: "$2a$10$BdT5RLirbEVhsSW085DU7ed9YagnSPo/VXyhMOoydq6kp0qzw5fLa"},
  {name: "Nerys", email: "kira@ds9.sf", password_digest: "$2a$10$d/8wGOL4uFcsGTJI3oUgEu.Ivg81TUWXdF64FYtU/HCK0uteA2Qfi"},
  {name: "Jadzia", email: "dax@ds9.sf", password_digest: "$2a$10$NYvi7lhvpZbU0gWJkAN2WuNDLl70XjoPtvipJqJ4IocSdRY23zNYK"}
])
Yarn.create!([
  {name: "Mirkwood", fiber: "Wool", price: "11.95", color: "Green", description: nil, in_stock: true, supplier_id: 1},
  {name: "Riverlands", fiber: "Wool", price: "8.95", color: "Blue", description: nil, in_stock: true, supplier_id: 2},
  {name: "Woodstock", fiber: "Wool", price: "12.95", color: "Multi", description: nil, in_stock: true, supplier_id: 1},
  {name: "March Hare", fiber: "Wool", price: "11.95", color: "Grey", description: nil, in_stock: true, supplier_id: 1},
  {name: "Shire", fiber: "Wool", price: "9.95", color: "Green", description: nil, in_stock: true, supplier_id: 1},
  {name: "Bajor", fiber: "Wool", price: "8.95", color: "Red", description: nil, in_stock: true, supplier_id: 1},
  {name: "Wednesday", fiber: "Superwash Wool", price: "10.95", color: "Stripes", description: nil, in_stock: true, supplier_id: 3},
  {name: "Nightshade", fiber: "Wool", price: "12.95", color: "Multi", description: nil, in_stock: true, supplier_id: 1},
  {name: "Pride", fiber: "Superwash Wool", price: "10.95", color: "Stripes", description: nil, in_stock: true, supplier_id: 3}
])
