part of 'user_info_states.dart';

class UserInfoCubit extends Cubit<UserInfoStates> {
  UserInfoCubit() : super(UserInfoInitState()) {
    getUserInfo();
  }

  // Instance
  UserSettingService userInfo = UserSettingService();

  Future<void> getUserInfo() async {
    emit(UserInfoLoadingState());
    await userInfo.getUserInfo().then((response) {
      if (response is NetworkSuccessResponse) {
        emit(UserInfoSuccessState(response.data));
      } else if (response is NetworkErrorResponse) {
        emit(UserInfoErrorState(response.error));
      }
    });
  }
}
