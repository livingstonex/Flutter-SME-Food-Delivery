class Food{
  final String id;
  final String name;
  final String imagePath;
  final String category;
  final double price;
  final double discount;
  final double ratings;

  Food({this.id, this.name, this.imagePath, this.category, this.price, this.discount, this.ratings});
}

final foods = [
  Food(
    id: "1",
    name: "Hot Coffee",
    imagePath: "assets/images/breakfast.jpeg",
    category: "1",
    price: 24.0,
    discount: 12.5,
    ratings: 99.0,
  ),
  Food(
    id: "2",
    name: "Grilled Chicken",
    imagePath: "assets/images/lunch.jpeg",
    category: "2",
    price: 35.0,
    discount: 14.5,
    ratings: 99.5,
  ),
];