
import 'package:atbjobsapp/feature/order/domain/entities/food_entity.dart';
import 'package:equatable/equatable.dart';

abstract class CarbState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CarbInitial extends CarbState {}

class CarbLoading extends CarbState {}

class CarbLoaded extends CarbState {
  final List<FoodEntity> carbs;

  CarbLoaded(this.carbs);

  @override
  List<Object?> get props => [carbs];
}

class CarbError extends CarbState {
  final String message;

  CarbError(this.message);

  @override
  List<Object?> get props => [message];
}
