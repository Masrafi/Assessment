import 'package:atbjobsapp/feature/order/data/data_source/food_remote_datasource.dart';
import 'package:atbjobsapp/feature/order/domain/entities/food_entity.dart';
import 'package:atbjobsapp/feature/order/domain/repositories/food_repository.dart';

class FoodRepositoryImpl implements FoodRepository {
  final FoodRemoteDataSource remoteDataSource;

  FoodRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<FoodEntity>> getFoods() async {
    final models = await remoteDataSource.fetchFoods();
    return models.map((model) => FoodEntity(
      foodName: model.foodName,
      calories: model.calories,
      imageUrl: model.imageUrl,
    )).toList();
  }
  
  @override
  Future<List<FoodEntity>> getMeats() async {
    final models = await remoteDataSource.getMeats();
    return models.map((model) => FoodEntity(
      foodName: model.foodName,
      calories: model.calories,
      imageUrl: model.imageUrl,
    )).toList();
  }  
  
  @override
  Future<List<FoodEntity>> getCarbs() async {
    final models = await remoteDataSource.getCarbs();
    return models.map((model) => FoodEntity(
      foodName: model.foodName,
      calories: model.calories,
      imageUrl: model.imageUrl,
    )).toList();
  }  
  
  @override
  Future<bool> postApi(Map<String, dynamic> data) => remoteDataSource.postApi(data);
}
