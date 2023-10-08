part of 'see_backed_states.dart';

class SeeBackedCubit extends Cubit<SeeBackedStates> {
  SeeBackedCubit() : super(SeeBackedInitState()) {}

  // Instance
  SeeBackedService seeBackedService = SeeBackedService();

  Future<void> getSeeBacked() async {
    emit(SeeBackedLoadingState());
    await seeBackedService.getSeeBacked().then((response) {
      if (response is NetworkSuccessResponse) {
        emit(SeeBackedSuccessState(response.data));
      } else if (response is NetworkErrorResponse) {
        emit(SeeBackedErrorState(response.error));
      }
    });
  }
}
