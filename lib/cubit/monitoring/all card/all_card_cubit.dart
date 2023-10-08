part of 'all_card_states.dart';

class AllCardCubit extends Cubit<AllCardStates> {
  AllCardCubit() : super(AllCardInitState()) {
    getAllCard();
  }

  // Instance
  AllCardService allCardService = AllCardService();

  Future<void> getAllCard() async {
    emit(AllCardLoadingState());
    await allCardService.getAllCard().then((response) {
      if (response is NetworkSuccessResponse) {
        emit(AllCardSuccessState(response.data));
      } else if (response is NetworkErrorResponse) {
        emit(AllCardErrorState(response.error));
      }
    });
  }
}
