import 'package:atbjobsapp/feature/order/data/data_source/food_remote_datasource.dart';
import 'package:atbjobsapp/feature/order/data/repositories/food_repository_impl.dart';
import 'package:atbjobsapp/feature/order/domain/repositories/food_repository.dart';
import 'package:atbjobsapp/feature/order/domain/usecases/fetch_foods_usecase.dart';
import 'package:atbjobsapp/feature/order/presentation/bloc/carb_bloc.dart';
import 'package:atbjobsapp/feature/order/presentation/bloc/meat_bloc.dart';
import 'package:atbjobsapp/feature/order/presentation/bloc/food_bloc.dart';
import 'package:atbjobsapp/feature/order/presentation/bloc/post_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
final firestore = FirebaseFirestore.instance;
  final dio = Dio();
  getIt.registerLazySingleton<Dio>(() => dio);

  getIt.registerLazySingleton<FoodRemoteDataSource>(() => FirebaseFoodRemoteDataSource(firestore, dio));

  getIt.registerLazySingleton<FoodRepository>(() => FoodRepositoryImpl(getIt()));
  getIt.registerLazySingleton(() => FetchFoodsUseCase(getIt()));


  // Bloc
  getIt.registerFactory(() => FoodBloc(getIt<FetchFoodsUseCase>()));
  getIt.registerFactory(() => MeatBloc(getIt<FetchFoodsUseCase>()));
  getIt.registerFactory(() => CarbBloc(getIt<FetchFoodsUseCase>()));
  getIt.registerFactory(() => PostBloc(getIt<FetchFoodsUseCase>()));
}
