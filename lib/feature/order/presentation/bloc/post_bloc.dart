import 'package:atbjobsapp/feature/order/domain/usecases/fetch_foods_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'post_event.dart';
import 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final FetchFoodsUseCase fetchFoodsUseCase;

  PostBloc(this.fetchFoodsUseCase) : super(PostInitial()) {
    on<LoadPostEvent>((event, emit) async {
      emit(PostLoading());
      try {
        final result = await fetchFoodsUseCase.postApi(event.data);
        if (result) {
          emit(PostLoaded());
        } else {
          emit(PostError("Data load fail"));
        }
      } catch (_) {
        emit(PostError("Data load fail"));
      }
    });
  }
}
