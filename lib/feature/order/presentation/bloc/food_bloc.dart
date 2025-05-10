import 'package:atbjobsapp/feature/order/domain/usecases/fetch_foods_usecase.dart';
import 'package:atbjobsapp/feature/order/presentation/bloc/food_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'food_event.dart';


class FoodBloc extends Bloc<FoodEvent, FoodState> {
  final FetchFoodsUseCase fetchFoodsUseCase;

  FoodBloc(this.fetchFoodsUseCase) : super(FoodInitial()) {
    on<LoadVegetablesEvent>((event, emit) async {
      emit(FoodLoading());
      try {
        final foods = await fetchFoodsUseCase();
        emit(FoodLoaded(foods));
      } catch (e) {
        emit(FoodError("Failed to load vegetables"));
      }
    });
  }
}
