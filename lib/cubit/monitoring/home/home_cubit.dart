part of 'home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitState()) {
    getHome();
  }

  // Instance
  HomeService homeService = HomeService();

  Future<void> getHome() async {
    emit(HomeLoadingState());
    await homeService.getHome().then((response) {
      if (response is NetworkSuccessResponse) {
        emit(HomeSuccessState(response.data));
      } else if (response is NetworkErrorResponse) {
        emit(HomeErrorState(response.error));
      }
    });
  }
}
