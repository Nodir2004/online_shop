class ProductModel {
  int id;
  String title;
  num price;
  String description;
  String category;
  List images;
  dynamic rating;
  dynamic stock;
  String brand;
  String thumbnail;
  dynamic discountPercentage;
  //RatingModel rating;

  ProductModel({
    required this.discountPercentage,
    required this.brand,
    required this.thumbnail,
    required this.stock,
    required this.rating,
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.images,
    // required this.rating,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      discountPercentage: json["discountPercentage"],
      brand: json["brand"],
      thumbnail: json["thumbnail"],
      stock: json["stock"],
      rating: json["rating"],
      id: json["id"] ?? 0,
      title: json["title"] ?? "",
      price: json["price"] ?? 0,
      description: json["description"] ?? "",
      category: json["category"] ?? "",
      images: json["images"] ?? [],
      // rating: RatingModel.fromJson(json["rating"] ?? {}),
    );
  }
}
