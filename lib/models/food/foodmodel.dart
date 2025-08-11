class FoodModel {
  final String name;
  final String imageUrl;
  final String disc;

  final int pId;
  final double pPrice;
  bool isAddedToCart = false;

  FoodModel({
    required this.pPrice,
    required this.pId,
    required this.disc,
    required this.imageUrl,
    required this.name,
  });
  static List<FoodModel> foodList = [
    FoodModel(
      pPrice: 20,
      pId: 1,
      imageUrl: "assets/images/foodiesfeed.com_burger-with-melted-cheese.jpg",
      name: "burger",
      disc: "Delicious Burger with fries",
    ),
    FoodModel(
      pPrice: 30,
      pId: 2,
      imageUrl: "assets/images/foodiesfeed.com_juicy-cheeseburger.jpg",
      name: "combo burger",
      disc: "Delicious Burger with fries",
    ),
    FoodModel(
      pPrice: 40,
      pId: 3,
      imageUrl: "assets/images/foodiesfeed.com_burger-with-melted-cheese.jpg",
      name: "cheese burger",
      disc: "Delicious Burger with fries",
    ),
    FoodModel(
      pPrice: 50,

      pId: 4,
      imageUrl: "assets/images/foodiesfeed.com_neapolitan-pizza-margherita.jpg",
      name: "pizza",
      disc: "Delicious Pizza with fries",
    ),
    FoodModel(
      pPrice: 60,
      pId: 5,
      imageUrl: "assets/images/foodiesfeed.com_slice-of-pizza-salami.jpg",
      name: "hot pizza",
      disc: "Delicious Pizza with fries",
    ),
    FoodModel(
      pPrice: 70,
      pId: 6,
      imageUrl: "assets/images/foodiesfeed.com_neapolitan-pizza-margherita.jpg",
      name: "hot pizza",
      disc: "Delicious Pizza with fries",
    ),
    FoodModel(
      pPrice: 80,
      pId: 7,
      imageUrl: "assets/images/foodiesfeed.com_burger-with-melted-cheese.jpg",
      name: "burger",
      disc: "Delicious Burger with fries",
    ),
    FoodModel(
      pPrice: 90,
      pId: 8,
      imageUrl: "assets/images/foodiesfeed.com_juicy-cheeseburger.jpg",
      name: "combo burger",
      disc: "Delicious Burger with fries",
    ),
    FoodModel(
      pPrice: 100,
      pId: 9,
      imageUrl: "assets/images/foodiesfeed.com_juicy-cheeseburger.jpg",
      name: "cheese burger",
      disc: "Delicious Burger with fries",
    ),
  ];
}
