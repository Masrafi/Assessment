import 'package:atbjobsapp/core/utils/config/config.dart';
import 'package:atbjobsapp/feature/order/data/model/food_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';

abstract class FoodRemoteDataSource {
  Future<List<FoodModel>> fetchFoods();
  Future<List<FoodModel>> getMeats();
  Future<List<FoodModel>> getCarbs();
  Future<bool> postApi(Map<String, dynamic> data);
}

class FirebaseFoodRemoteDataSource implements FoodRemoteDataSource {
  final FirebaseFirestore firestore;
  final Dio dio;
  FirebaseFoodRemoteDataSource(this.firestore, this.dio);

  @override
  Future<List<FoodModel>> fetchFoods() async {
    final snapshot = await firestore.collection('foods').get();
    return snapshot.docs.map((doc) => FoodModel.fromJson(doc.data())).toList();
  }
  
  @override
  Future<List<FoodModel>> getMeats() async {
      final snapshot = await firestore.collection('carb').get();
          return snapshot.docs.map((doc) => FoodModel.fromJson(doc.data())).toList();
    }  
    
  @override
  Future<List<FoodModel>> getCarbs() async {
      final snapshot = await firestore.collection('meat').get();
          return snapshot.docs.map((doc) => FoodModel.fromJson(doc.data())).toList();
    }  
    
  @override
  Future<bool> postApi(Map<String, dynamic> data) async {
     try {
       final response = await dio.post(Config.apiUrl,data: data,
         options: Options(headers: {'Content-Type': 'application/json'}),
       );
       if (response.statusCode == 200 && response.data['result'] == true) {
         return true;
       } else {
         throw Exception('API failed');
       }
     } catch (e) {
       throw Exception('Error placing order: $e');
     }
  }
}
