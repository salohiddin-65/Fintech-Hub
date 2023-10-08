part of 'mentors_states.dart';

class MentorsCubit extends Cubit<MentorsStates> {
  MentorsCubit() : super(MentorsInitState()) {
    getMentors();
  }

  // Instance
  MentorsService mentorsService = MentorsService();

  Future<void> getMentors() async {
    emit(MentorsLoadingState());
    await mentorsService.getMentors().then((response) {
      if (response is NetworkSuccessResponse) {
        emit(MentorsSuccessState(response.data));
      } else if (response is NetworkErrorResponse) {
        emit(MentorsErrorState(response.error));
      }
    });
  }
}
