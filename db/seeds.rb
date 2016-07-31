Supplier.create!([
  {name: "Sheepers Creepers", email: "ewe@sheepers.com", phone: "(777) 789-7890", supplier_id: 1},
  {name: "Wooly Bully", email: "nelson@woolybully.com", phone: "(333) 234-2345", supplier_id: 2},
  {name: "The Stripery", email: "alice@stripery.com", phone: "(444) 456-4567", supplier_id: 3}
])
Yarn.create!([
  {name: "Wednesday", fiber: "Superwash Wool", price: "11.0", color: "Black Stripes", image: "http://d2q9kw5vp0we94.cloudfront.net/Yarn_Color_Detail/27081.jpg", description: nil, in_stock: true, supplier_id: nil},
  {name: "Hawthorne", fiber: "Wool", price: "11.0", color: "Green", image: "http://d2q9kw5vp0we94.cloudfront.net/Yarn_Color_Detail/26444.jpg", description: nil, in_stock: true, supplier_id: nil},
  {name: "Stripey", fiber: "Superwash Wool", price: "11.0", color: "Rainbow", image: "http://d2q9kw5vp0we94.cloudfront.net/Yarn_Color_Detail/24914.jpg", description: nil, in_stock: true, supplier_id: nil},
  {name: "Woodstock", fiber: "Wool", price: "12.5", color: "Multi", image: "http://d2q9kw5vp0we94.cloudfront.net/Yarn_Color_Detail/26441.jpg", description: nil, in_stock: true, supplier_id: nil},
  {name: "Shire", fiber: "Wool", price: "10.0", color: "Green", image: "http://d2q9kw5vp0we94.cloudfront.net/Yarn_Color_Detail/26434.jpg", description: nil, in_stock: true, supplier_id: nil},
  {name: "March Hare", fiber: "Wool", price: "12.0", color: "Grey", image: "http://d2q9kw5vp0we94.cloudfront.net/Yarn_Color_Detail/26685.jpg", description: nil, in_stock: true, supplier_id: nil},
  {name: "Nightshade", fiber: "Wool", price: "12.0", color: "Dark Multi", image: "http://d2q9kw5vp0we94.cloudfront.net/Yarn_Color_Detail/26867.jpg", description: nil, in_stock: true, supplier_id: nil},
  {name: "Bajor", fiber: "Wool", price: "9.0", color: "Red", image: "http://d2q9kw5vp0we94.cloudfront.net/Yarn_Color_Detail/26865.jpg", description: nil, in_stock: true, supplier_id: nil},
  {name: "Tonal", fiber: "Wool", price: "9.0", color: "Blue", image: "http://d2q9kw5vp0we94.cloudfront.net/Yarn_Color_Detail/26140.jpg", description: nil, in_stock: true, supplier_id: nil}
])
