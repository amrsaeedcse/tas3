class ProductModel {
  final String image;
  final String name;
  final String disc;
  final bool isFeatured;
  final bool isNew;
  final int pId;
  bool isAdded;
  final double price;

  ProductModel({
    required this.price,
    required this.isAdded,
    required this.name,
    required this.disc,
    required this.image,
    required this.pId,
    required this.isFeatured,
    required this.isNew,
  });

  static List<ProductModel> products = [
    ProductModel(
      pId: 1,
      name: "Athletic Running Shoes",
      disc:
          "Comfortable and lightweight running shoes designed for daily workouts and long runs.",
      image: "assets/images/Athletic Running Shoes.png",
      isFeatured: true,
      isNew: true,
      isAdded: false,
      price: 75.00,
    ),
    ProductModel(
      pId: 2,
      name: "Basic Cotton T-Shirt",
      disc:
          "Soft, breathable cotton T-shirt perfect for casual wear with a minimal design.",
      image: "assets/images/Basic Cotton T-Shirt.png",
      isFeatured: false,
      isNew: true,
      isAdded: false,
      price: 25.00,
    ),
    ProductModel(
      pId: 3,
      name: "Classic Denim Jeans",
      disc:
          "Timeless slim-fit denim jeans with a durable finish for everyday style.",
      image: "assets/images/Classic Denim Jeans.png",
      isFeatured: true,
      isNew: false,
      isAdded: false,
      price: 55.00,
    ),
    ProductModel(
      pId: 4,
      name: "Classic Leather Boots",
      disc:
          "Stylish and durable leather boots designed for both comfort and elegance.",
      image: "assets/images/Classic Leather Boots.png",
      isFeatured: true,
      isNew: false,
      isAdded: false,
      price: 95.00,
    ),
    ProductModel(
      pId: 5,
      name: "Cozy Knit Sweater",
      disc: "Warm and soft knit sweater ideal for cold days with a cozy feel.",
      image: "assets/images/Cozy Knit Sweater.png",
      isFeatured: false,
      isNew: true,
      isAdded: false,
      price: 40.00,
    ),
    ProductModel(
      pId: 6,
      name: "Minimalist Backpack",
      disc:
          "Sleek and practical backpack with enough space for all your essentials.",
      image: "assets/images/Minimalist Backpack.png",
      isFeatured: true,
      isNew: true,
      isAdded: false,
      price: 60.00,
    ),
    ProductModel(
      pId: 7,
      name: "Urban Streetwear Jacket",
      disc:
          "Trendy streetwear jacket designed for style and comfort in urban settings.",
      image: "assets/images/Urban Streetwear Jacket.png",
      isFeatured: false,
      isNew: false,
      isAdded: false,
      price: 85.00,
    ),
    ProductModel(
      pId: 8,
      name: "Vintage Denim Jeans",
      disc:
          "Retro-style denim jeans with a relaxed fit and authentic vintage look.",
      image: "assets/images/Vintage Denim Jeans.png",
      isFeatured: true,
      isNew: false,
      isAdded: false,
      price: 65.00,
    ),
    ProductModel(
      pId: 9,
      name: "Slim Fit Trousers",
      disc:
          "Elegant slim-fit trousers perfect for formal and semi-formal occasions.",
      image: "assets/images/Classic Denim Jeans.png",
      isFeatured: false,
      isNew: true,
      isAdded: false,
      price: 50.00,
    ),
    ProductModel(
      pId: 10,
      name: "Casual Hoodie",
      disc: "Comfortable hoodie with a modern cut for your casual look.",
      image: "assets/images/Cozy Knit Sweater.png",
      isFeatured: true,
      isNew: true,
      isAdded: false,
      price: 45.00,
    ),
    ProductModel(
      pId: 11,
      name: "Leather Wallet",
      disc:
          "Premium quality leather wallet with multiple compartments for cards and cash.",
      image: "assets/images/Classic Leather Boots.png",
      isFeatured: false,
      isNew: true,
      isAdded: false,
      price: 35.00,
    ),
    ProductModel(
      pId: 12,
      name: "Sports Shorts",
      disc:
          "Lightweight and breathable shorts designed for sports and gym sessions.",
      image: "assets/images/Athletic Running Shoes.png",
      isFeatured: true,
      isNew: false,
      isAdded: false,
      price: 30.00,
    ),
    ProductModel(
      pId: 13,
      name: "Graphic Tee",
      disc:
          "Trendy graphic T-shirt that adds a bold style statement to your outfit.",
      image: "assets/images/Basic Cotton T-Shirt.png",
      isFeatured: false,
      isNew: true,
      isAdded: false,
      price: 28.00,
    ),
    ProductModel(
      pId: 14,
      name: "Winter Jacket",
      disc:
          "Insulated winter jacket designed to keep you warm and stylish in cold weather.",
      image: "assets/images/Urban Streetwear Jacket.png",
      isFeatured: true,
      isNew: true,
      isAdded: false,
      price: 120.00,
    ),
    ProductModel(
      pId: 15,
      name: "Summer Cap",
      disc: "Light cotton cap for summer outings and casual wear.",
      image: "assets/images/Minimalist Backpack.png",
      isFeatured: false,
      isNew: true,
      isAdded: false,
      price: 18.00,
    ),
    ProductModel(
      pId: 16,
      name: "Running Tracksuit",
      disc: "Breathable tracksuit ideal for running, gym workouts, and sports.",
      image: "assets/images/Athletic Running Shoes.png",
      isFeatured: true,
      isNew: false,
      isAdded: false,
      price: 70.00,
    ),
    ProductModel(
      pId: 17,
      name: "Casual Sneakers",
      disc:
          "Everyday sneakers designed with a mix of comfort and casual style.",
      image: "assets/images/Athletic Running Shoes.png",
      isFeatured: false,
      isNew: false,
      isAdded: false,
      price: 55.00,
    ),
    ProductModel(
      pId: 18,
      name: "Formal Shirt",
      disc:
          "Classic white formal shirt perfect for office and formal occasions.",
      image: "assets/images/Basic Cotton T-Shirt.png",
      isFeatured: true,
      isNew: true,
      isAdded: false,
      price: 38.00,
    ),
    ProductModel(
      pId: 19,
      name: "Casual Shorts",
      disc: "Soft cotton shorts for daily casual comfort and style.",
      image: "assets/images/Classic Denim Jeans.png",
      isFeatured: false,
      isNew: true,
      isAdded: false,
      price: 32.00,
    ),
    ProductModel(
      pId: 20,
      name: "Travel Backpack",
      disc:
          "Durable and spacious backpack for travel, school, or work essentials.",
      image: "assets/images/Minimalist Backpack.png",
      isFeatured: true,
      isNew: false,
      isAdded: false,
      price: 65.00,
    ),
  ];
}
