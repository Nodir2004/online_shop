class RatingModel {
  num rating;
  int count;

  RatingModel({
    required this.rating,
    required this.count,
  });

  factory RatingModel.fromJson(Map<String, dynamic> json) {
    return RatingModel(
      rating: json["rating"] ?? 0,
       count: json["count"] ?? 0
       );
  }
}
