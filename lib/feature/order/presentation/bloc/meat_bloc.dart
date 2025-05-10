import 'package:atbjobsapp/feature/order/domain/usecases/fetch_foods_usecase.dart';
import 'package:atbjobsapp/feature/order/presentation/bloc/meat_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'meat_event.dart';

class MeatBloc extends Bloc<MeatEvent, MeatState> {
  final FetchFoodsUseCase fetchFoodsUseCase;

  MeatBloc(this.fetchFoodsUseCase) : super(MeatInitial()) {
    on<LoadMeatEvent>((event, emit) async {
      emit(MeatLoading());
      try {
        final carbs = await fetchFoodsUseCase.getMeats();
        emit(MeatLoaded(carbs));
      } catch (e) {
        emit(MeatError("Failed to load carbs"));
      }
    });
  }
}
