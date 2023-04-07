class Product {
  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
  });

  int id;
  String title;
  String description;
  int price;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        price: json["price"],
      );
}
