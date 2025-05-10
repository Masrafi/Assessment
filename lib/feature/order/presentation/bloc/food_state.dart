
import 'package:atbjobsapp/feature/order/domain/entities/food_entity.dart';
import 'package:equatable/equatable.dart';


abstract class FoodState extends Equatable {
  @override
  List<Object?> get props => [];
}

class FoodInitial extends FoodState {}

class FoodLoading extends FoodState {}

class FoodLoaded extends FoodState {
  final List<FoodEntity> foods;

  FoodLoaded(this.foods);

  @override
  List<Object?> get props => [foods];
}

class FoodError extends FoodState {
  final String message;

  FoodError(this.message);

  @override
  List<Object?> get props => [message];
}
