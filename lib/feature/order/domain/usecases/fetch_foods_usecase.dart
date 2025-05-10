import 'package:atbjobsapp/feature/order/domain/entities/food_entity.dart';
import 'package:atbjobsapp/feature/order/domain/repositories/food_repository.dart';

class FetchFoodsUseCase {
  final FoodRepository repository;

  FetchFoodsUseCase(this.repository);

  Future<List<FoodEntity>> call() => repository.getFoods();
  Future<List<FoodEntity>> getMeats() => repository.getMeats();
  Future<List<FoodEntity>> getCarbs() => repository.getCarbs();
  Future<bool> postApi(Map<String, dynamic> data) => repository.postApi(data);
}
