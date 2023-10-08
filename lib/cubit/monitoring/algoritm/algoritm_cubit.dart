part of 'algoritm_states.dart';

class AlgoritmCubit extends Cubit<AlgoritmStates> {
  AlgoritmCubit() : super(AlgoritmInitState()) {
    getAlgoritm();
  }

  // Instance
  AlgoritmService algoritmService = AlgoritmService();

  Future<void> getAlgoritm() async {
    emit(AlgoritmLoadingState());
    await algoritmService.getAlgoritm().then((response) {
      if (response is NetworkSuccessResponse) {
        emit(AlgoritmSuccessState(response.data));
      } else if (response is NetworkErrorResponse) {
        emit(AlgoritmErrorState(response.error));
      }
    });
  }
}
