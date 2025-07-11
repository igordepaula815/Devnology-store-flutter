import '../models/produto.dart';
  
  
final List<Produto> produtos_europeus = [

Produto(
  id: 1,
  nome: "Elegant Wine Glass",
  fornecedor: "Europa",
  descricao: "Finely crafted glassware for special occasions.",
  categoria: "Glassware",
  imagem: "https://images.unsplash.com/photo-1528825871115-3581a5387919?auto=format&fit=crop&w=320&q=80",
  preco: 87.50,
  material: "Glass",
  departamento: "Home",
  desconto: false,
),
Produto(
  id: 2,
  nome: "Classic Cotton Shirt",
  fornecedor: "Europa",
  descricao: "European style shirt made with 100% cotton.",
  categoria: "Clothing",
  imagem: "https://images.unsplash.com/photo-1503342217505-b0a15ec3261c?auto=format&fit=crop&w=320&q=80",
  preco: 135.00,
  material: "Cotton",
  departamento: "Clothing",
  desconto: true,
),
Produto(
  id: 3,
  nome: "Artisan Wooden Chair",
  fornecedor: "Europa",
  descricao: "Elegant wooden chair with ergonomic design.",
  categoria: "Furniture",
  imagem: "https://images.unsplash.com/photo-1494526585095-c41746248156?auto=format&fit=crop&w=320&q=80",
  preco: 425.90,
  material: "Wood",
  departamento: "Furniture",
  desconto: false,
),
Produto(
  id: 4,
  nome: "Vintage Wall Clock",
  fornecedor: "Europa",
  descricao: "Timeless wall clock with European flair.",
  categoria: "Decor",
  imagem: "https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=320&q=80",
  preco: 220.00,
  material: "Metal",
  departamento: "Home",
  desconto: true,
),
Produto(
  id: 5,
  nome: "Luxury Table Lamp",
  fornecedor: "Europa",
  descricao: "Elegant lamp to light up your home office.",
  categoria: "Lighting",
  imagem: "https://images.unsplash.com/photo-1505691938895-1758d7feb511?auto=format&fit=crop&w=320&q=80",
  preco: 310.00,
  material: "Ceramic",
  departamento: "Electronics",
  desconto: false,
),
Produto(
  id: 6,
  nome: "Stylish Winter Coat",
  fornecedor: "Europa",
  descricao: "Warm and fashionable winter coat.",
  categoria: "Outerwear",
  imagem: "https://images.unsplash.com/photo-1541099649105-f69ad21f3246?auto=format&fit=crop&w=320&q=80",
  preco: 520.00,
  material: "Wool",
  departamento: "Clothing",
  desconto: true,
),
Produto(
  id: 7,
  nome: "Minimalist Tea Set",
  fornecedor: "Europa",
  descricao: "Modern design tea set for two.",
  categoria: "Kitchenware",
  imagem: "https://images.unsplash.com/photo-1509042239860-f550ce710b93?auto=format&fit=crop&w=320&q=80",
  preco: 185.00,
  material: "Porcelain",
  departamento: "Kitchen",
  desconto: false,
),
Produto(
  id: 8,
  nome: "Leather Travel Bag",
  fornecedor: "Europa",
  descricao: "Compact leather bag for weekend getaways.",
  categoria: "Bags",
  imagem: "https://images.unsplash.com/photo-1512436991641-6745cdb1723f?auto=format&fit=crop&w=320&q=80",
  preco: 640.00,
  material: "Leather",
  departamento: "Accessories",
  desconto: true,
),
Produto(
  id: 9,
  nome: "Modern Kitchen Stool",
  fornecedor: "Europa",
  descricao: "European-style stool with durable finish.",
  categoria: "Furniture",
  imagem: "https://picsum.photos/seed/euro1/320/250",
  preco: 278.90,
  material: "Steel",
  departamento: "Furniture",
  desconto: false,
),
Produto(
  id: 10,
  nome: "Designer Wall Art",
  fornecedor: "Europa",
  descricao: "Abstract art print for modern interiors.",
  categoria: "Art",
  imagem: "https://images.unsplash.com/photo-1504384308090-c894fdcc538d?auto=format&fit=crop&w=320&q=80",
  preco: 140.00,
  material: "Canvas",
  departamento: "Home",
  desconto: true,
),
Produto(
  id: 11,
  nome: "Elegant Silver Necklace",
  fornecedor: "Europa",
  descricao: "Handcrafted silver necklace with minimalist design.",
  categoria: "Jewelry",
  imagem: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=320&q=80",
  preco: 220.00,
  material: "Silver",
  departamento: "Accessories",
  desconto: false,
),
Produto(
  id: 12,
  nome: "Classic Leather Shoes",
  fornecedor: "Europa",
  descricao: "Durable and comfortable leather shoes for everyday wear.",
  categoria: "Footwear",
  imagem: "https://images.unsplash.com/photo-1491553895911-0055eca6402d?auto=format&fit=crop&w=320&q=80",
  preco: 310.00,
  material: "Leather",
  departamento: "Footwear",
  desconto: true,
),
Produto(
  id: 13,
  nome: "Modern Office Desk",
  fornecedor: "Europa",
  descricao: "Spacious office desk with clean lines and storage space.",
  categoria: "Furniture",
  imagem: "https://images.unsplash.com/photo-1519710164239-da123dc03ef4?auto=format&fit=crop&w=320&q=80",
  preco: 750.00,
  material: "Wood",
  departamento: "Furniture",
  desconto: false,
),
Produto(
  id: 14,
  nome: "Decorative Ceramic Vase",
  fornecedor: "Europa",
  descricao: "Beautiful ceramic vase for your living room decoration.",
  categoria: "Decor",
  imagem: "https://picsum.photos/seed/euro2/320/250",
  preco: 85.00,
  material: "Ceramic",
  departamento: "Home",
  desconto: true,
),
Produto(
  id: 15,
  nome: "Woolen Winter Scarf",
  fornecedor: "Europa",
  descricao: "Soft and warm wool scarf for chilly days.",
  categoria: "Accessories",
  imagem: "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=320&q=80",
  preco: 60.00,
  material: "Wool",
  departamento: "Clothing",
  desconto: false,
),
Produto(
  id: 16,
  nome: "Classic Round Sunglasses",
  fornecedor: "Europa",
  descricao: "Timeless round sunglasses with UV protection.",
  categoria: "Accessories",
  imagem: "https://images.unsplash.com/photo-1497493292307-31c376b6e479?auto=format&fit=crop&w=320&q=80",
  preco: 140.00,
  material: "Plastic",
  departamento: "Accessories",
  desconto: true,
),
Produto(
  id: 17,
  nome: "Artisan Leather Wallet",
  fornecedor: "Europa",
  descricao: "Handmade wallet crafted from premium leather.",
  categoria: "Accessories",
  imagem: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=320&q=80",
  preco: 120.00,
  material: "Leather",
  departamento: "Accessories",
  desconto: false,
),
Produto(
  id: 18,
  nome: "Contemporary Floor Lamp",
  fornecedor: "Europa",
  descricao: "Stylish floor lamp to brighten your living room.",
  categoria: "Lighting",
  imagem: "https://images.unsplash.com/photo-1501594907352-04cda38ebc29?auto=format&fit=crop&w=320&q=80",
  preco: 185.00,
  material: "Metal",
  departamento: "Electronics",
  desconto: true,
),
Produto(
  id: 19,
  nome: "Minimalist Wall Shelf",
  fornecedor: "Europa",
  descricao: "Modern shelf to organize your books and decor.",
  categoria: "Furniture",
  imagem: "https://images.unsplash.com/photo-1519710164239-da123dc03ef4?auto=format&fit=crop&w=320&q=80",
  preco: 95.00,
  material: "Wood",
  departamento: "Home",
  desconto: false,
),
Produto(
  id: 20,
  nome: "Soft Cotton Bedding Set",
  fornecedor: "Europa",
  descricao: "Comfortable and breathable bedding for your bedroom.",
  categoria: "Home",
  imagem: "https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=320&q=80",
  preco: 220.00,
  material: "Cotton",
  departamento: "Home",
  desconto: true,
),
Produto(
  id: 21,
  nome: "Vintage Leather Backpack",
  fornecedor: "Europa",
  descricao: "Retro style backpack made of genuine leather.",
  categoria: "Bags",
  imagem: "https://images.unsplash.com/photo-1526045612212-70caf35c14df?auto=format&fit=crop&w=320&q=80",
  preco: 390.00,
  material: "Leather",
  departamento: "Accessories",
  desconto: false,
),
Produto(
  id: 22,
  nome: "Elegant Porcelain Dinnerware",
  fornecedor: "Europa",
  descricao: "Complete dinnerware set with elegant porcelain design.",
  categoria: "Kitchenware",
  imagem: "https://picsum.photos/seed/euro3/320/250",
  preco: 320.00,
  material: "Porcelain",
  departamento: "Kitchen",
  desconto: true,
),
Produto(
  id: 23,
  nome: "Modern Desk Organizer",
  fornecedor: "Europa",
  descricao: "Keep your workspace tidy with this desk organizer.",
  categoria: "Office",
  imagem: "https://images.unsplash.com/photo-1515377905703-c4788e51af15?auto=format&fit=crop&w=320&q=80",
  preco: 45.00,
  material: "Plastic",
  departamento: "Office",
  desconto: false,
),
Produto(
  id: 24,
  nome: "Classic Wool Hat",
  fornecedor: "Europa",
  descricao: "Stylish wool hat for winter fashion.",
  categoria: "Accessories",
  imagem: "https://images.unsplash.com/photo-1512436991641-6745cdb1723f?auto=format&fit=crop&w=320&q=80",
  preco: 75.00,
  material: "Wool",
  departamento: "Clothing",
  desconto: true,
),
Produto(
  id: 25,
  nome: "Ergonomic Office Chair",
  fornecedor: "Europa",
  descricao: "Comfortable chair with lumbar support.",
  categoria: "Furniture",
  imagem: "https://images.unsplash.com/photo-1504384308090-c894fdcc538d?auto=format&fit=crop&w=320&q=80",
  preco: 550.00,
  material: "Mesh",
  departamento: "Office",
  desconto: false,
),
Produto(
  id: 26,
  nome: "Stainless Steel Cookware Set",
  fornecedor: "Europa",
  descricao: "Durable cookware set for your kitchen needs.",
  categoria: "Kitchenware",
  imagem: "https://picsum.photos/seed/euro4/320/250",
  preco: 400.00,
  material: "Steel",
  departamento: "Kitchen",
  desconto: true,
),
Produto(
  id: 27,
  nome: "Contemporary Wall Mirror",
  fornecedor: "Europa",
  descricao: "Sleek wall mirror for a modern look.",
  categoria: "Decor",
  imagem: "https://images.unsplash.com/photo-1519710164239-da123dc03ef4?auto=format&fit=crop&w=320&q=80",
  preco: 150.00,
  material: "Glass",
  departamento: "Home",
  desconto: false,
),
Produto(
  id: 28,
  nome: "Leather-bound Journal",
  fornecedor: "Europa",
  descricao: "Perfect journal for your notes and sketches.",
  categoria: "Stationery",
  imagem: "https://images.unsplash.com/photo-1526304640581-d334cdbbf45e?auto=format&fit=crop&w=320&q=80",
  preco: 35.00,
  material: "Leather",
  departamento: "Office",
  desconto: true,
),
Produto(
  id: 29,
  nome: "Classic Denim Jeans",
  fornecedor: "Europa",
  descricao: "Comfortable and durable denim jeans.",
  categoria: "Clothing",
  imagem: "https://images.unsplash.com/photo-1512436991641-6745cdb1723f?auto=format&fit=crop&w=320&q=80",
  preco: 120.00,
  material: "Denim",
  departamento: "Clothing",
  desconto: false,
),
Produto(
  id: 30,
  nome: "Modern Ceramic Planter",
  fornecedor: "Europa",
  descricao: "Minimalist planter for indoor plants.",
  categoria: "Garden",
  imagem: "https://images.unsplash.com/photo-1490818387583-1baba5e638af?auto=format&fit=crop&w=320&q=80",
  preco: 60.00,
  material: "Ceramic",
  departamento: "Garden",
  desconto: true,
),
Produto(
  id: 31,
  nome: "Stylish Wool Sweater",
  fornecedor: "Europa",
  descricao: "Cozy wool sweater for cold days.",
  categoria: "Clothing",
  imagem: "https://picsum.photos/seed/euro5/320/250",
  preco: 180.00,
  material: "Wool",
  departamento: "Clothing",
  desconto: false,
),
Produto(
  id: 32,
  nome: "Compact Bluetooth Speaker",
  fornecedor: "Europa",
  descricao: "Portable speaker with high-quality sound.",
  categoria: "Electronics",
  imagem: "https://picsum.photos/seed/euro6/320/250",
  preco: 95.00,
  material: "Plastic",
  departamento: "Electronics",
  desconto: true,
),
Produto(
  id: 33,
  nome: "Leather Strap Watch",
  fornecedor: "Europa",
  descricao: "Elegant watch with genuine leather strap.",
  categoria: "Accessories",
  imagem: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=320&q=80",
  preco: 350.00,
  material: "Leather",
  departamento: "Accessories",
  desconto: false,
),
Produto(
  id: 34,
  nome: "Minimalist Desk Lamp",
  fornecedor: "Europa",
  descricao: "Simple and functional lamp for your desk.",
  categoria: "Lighting",
  imagem: "https://images.unsplash.com/photo-1505691938895-1758d7feb511?auto=format&fit=crop&w=320&q=80",
  preco: 85.00,
  material: "Metal",
  departamento: "Electronics",
  desconto: true,
),
Produto(
  id: 35,
  nome: "Classic Cotton T-shirt",
  fornecedor: "Europa",
  descricao: "Soft cotton T-shirt with a classic fit.",
  categoria: "Clothing",
  imagem: "https://images.unsplash.com/photo-1512436991641-6745cdb1723f?auto=format&fit=crop&w=320&q=80",
  preco: 45.00,
  material: "Cotton",
  departamento: "Clothing",
  desconto: false,
),
Produto(
  id: 36,
  nome: "Elegant Porcelain Teapot",
  fornecedor: "Europa",
  descricao: "Perfect teapot for your afternoon tea.",
  categoria: "Kitchenware",
  imagem: "https://images.unsplash.com/photo-1509042239860-f550ce710b93?auto=format&fit=crop&w=320&q=80",
  preco: 70.00,
  material: "Porcelain",
  departamento: "Kitchen",
  desconto: true,
),
Produto(
  id: 37,
  nome: "Contemporary Wall Clock",
  fornecedor: "Europa",
  descricao: "Modern design clock for your wall.",
  categoria: "Decor",
  imagem: "https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=320&q=80",
  preco: 120.00,
  material: "Metal",
  departamento: "Home",
  desconto: false,
),
Produto(
  id: 38,
  nome: "Leather Hiking Boots",
  fornecedor: "Europa",
  descricao: "Durable boots for your outdoor adventures.",
  categoria: "Footwear",
  imagem: "https://images.unsplash.com/photo-1491553895911-0055eca6402d?auto=format&fit=crop&w=320&q=80",
  preco: 280.00,
  material: "Leather",
  departamento: "Footwear",
  desconto: true,
),
Produto(
  id: 39,
  nome: "Classic Wooden Desk",
  fornecedor: "Europa",
  descricao: "Sturdy wooden desk with ample workspace.",
  categoria: "Furniture",
  imagem: "https://images.unsplash.com/photo-1519710164239-da123dc03ef4?auto=format&fit=crop&w=320&q=80",
  preco: 600.00,
  material: "Wood",
  departamento: "Furniture",
  desconto: false,
),
Produto(
  id: 40,
  nome: "Stylish Canvas Backpack",
  fornecedor: "Europa",
  descricao: "Lightweight backpack for everyday use.",
  categoria: "Bags",
  imagem: "https://images.unsplash.com/photo-1526045612212-70caf35c14df?auto=format&fit=crop&w=320&q=80",
  preco: 210.00,
  material: "Canvas",
  departamento: "Accessories",
  desconto: true,
),
Produto(
  id: 41,
  nome: "Minimalist Ceramic Mug",
  fornecedor: "Europa",
  descricao: "Simple mug perfect for your morning coffee.",
  categoria: "Kitchenware",
  imagem: "https://images.unsplash.com/photo-1511920170033-f8396924c348?auto=format&fit=crop&w=320&q=80",
  preco: 25.00,
  material: "Ceramic",
  departamento: "Kitchen",
  desconto: false,
),
Produto(
  id: 42,
  nome: "Comfortable Cotton Socks",
  fornecedor: "Europa",
  descricao: "Soft and breathable socks for everyday wear.",
  categoria: "Clothing",
  imagem: "https://images.unsplash.com/photo-1503342217505-b0a15ec3261c?auto=format&fit=crop&w=320&q=80",
  preco: 15.00,
  material: "Cotton",
  departamento: "Clothing",
  desconto: true,
),
Produto(
  id: 43,
  nome: "Elegant Silver Ring",
  fornecedor: "Europa",
  descricao: "Delicate silver ring with a modern design.",
  categoria: "Jewelry",
  imagem: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=320&q=80",
  preco: 90.00,
  material: "Silver",
  departamento: "Accessories",
  desconto: false,
),
Produto(
  id: 44,
  nome: "Classic Leather Belt",
  fornecedor: "Europa",
  descricao: "Durable belt made from genuine leather.",
  categoria: "Accessories",
  imagem: "https://picsum.photos/seed/euro7/320/250",
  preco: 65.00,
  material: "Leather",
  departamento: "Accessories",
  desconto: true,
),
Produto(
  id: 45,
  nome: "Modern Glass Vase",
  fornecedor: "Europa",
  descricao: "Clear glass vase with a sleek design.",
  categoria: "Decor",
  imagem: "https://picsum.photos/seed/euro10/320/250",
  preco: 55.00,
  material: "Glass",
  departamento: "Home",
  desconto: false,
),
Produto(
  id: 46,
  nome: "Stylish Wool Gloves",
  fornecedor: "Europa",
  descricao: "Warm gloves for cold weather.",
  categoria: "Accessories",
  imagem: "https://picsum.photos/seed/euro8/320/250",
  preco: 40.00,
  material: "Wool",
  departamento: "Clothing",
  desconto: true,
),
Produto(
  id: 47,
  nome: "Compact Wireless Headphones",
  fornecedor: "Europa",
  descricao: "Bluetooth headphones with high sound quality.",
  categoria: "Electronics",
  imagem: "https://picsum.photos/seed/euro11/320/250",
  preco: 150.00,
  material: "Plastic",
  departamento: "Electronics",
  desconto: false,
),
Produto(
  id: 48,
  nome: "Elegant Porcelain Plate",
  fornecedor: "Europa",
  descricao: "Beautiful plate for your dining table.",
  categoria: "Kitchenware",
  imagem: "https://images.unsplash.com/photo-1509042239860-f550ce710b93?auto=format&fit=crop&w=320&q=80",
  preco: 30.00,
  material: "Porcelain",
  departamento: "Kitchen",
  desconto: true,
),
Produto(
  id: 49,
  nome: "Classic Denim Jacket",
  fornecedor: "Europa",
  descricao: "Durable jacket with timeless style.",
  categoria: "Clothing",
  imagem: "https://images.unsplash.com/photo-1491553895911-0055eca6402d?auto=format&fit=crop&w=320&q=80",
  preco: 150.00,
  material: "Denim",
  departamento: "Clothing",
  desconto: false,
),
Produto(
  id: 50,
  nome: "Modern Office Lamp",
  fornecedor: "Europa",
  descricao: "Functional and stylish desk lamp.",
  categoria: "Lighting",
  imagem: "https://images.unsplash.com/photo-1505691938895-1758d7feb511?auto=format&fit=crop&w=320&q=80",
  preco: 70.00,
  material: "Metal",
  departamento: "Office",
  desconto: true,
),

  
];