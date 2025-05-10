class FoodModel {
  final String foodName;
  final int calories;
  final String imageUrl;

  FoodModel({required this.foodName, required this.calories, required this.imageUrl});

  factory FoodModel.fromJson(Map<String, dynamic> json) {
    return FoodModel(
      foodName: json['food_name'],
      calories: json['calories'],
      imageUrl: json['image_url'],
    );
  }

  Map<String, dynamic> toJson() => {
    'food_name': foodName,
    'calories': calories,
    'image_url': imageUrl,
  };
}
