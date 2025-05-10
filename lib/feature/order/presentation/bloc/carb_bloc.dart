import 'package:atbjobsapp/feature/order/domain/usecases/fetch_foods_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'carb_event.dart';
import 'carb_state.dart';

class CarbBloc extends Bloc<CarbEvent, CarbState> {
  final FetchFoodsUseCase fetchFoodsUseCase;

  CarbBloc(this.fetchFoodsUseCase) : super(CarbInitial()) {
    on<LoadCarbEvent>((event, emit) async {
      emit(CarbLoading());
      try {
        final carbs = await fetchFoodsUseCase.getCarbs();
        emit(CarbLoaded(carbs));
      } catch (e) {
        emit(CarbError("Failed to load carbs"));
      }
    });
  }
}
