import 'package:atbjobsapp/feature/order/domain/entities/food_entity.dart';

abstract class FoodRepository {
  Future<List<FoodEntity>> getFoods();
  Future<List<FoodEntity>> getMeats();
  Future<List<FoodEntity>> getCarbs();
  Future<bool> postApi(Map<String, dynamic> data);
}
