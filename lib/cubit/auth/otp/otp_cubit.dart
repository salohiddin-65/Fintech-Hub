part of 'otp_states.dart';

class OtpCodeCubit extends Cubit<OtpCodeStates> {
  OtpCodeCubit() : super(OtpCodeInitState());

  // instance
  AuthService authService = AuthService();

  // method auth.two
  Future<void> authTwo(
      {required String otpToken, required String otpCode}) async {
    emit(OtpCodeLoadingState());
    await authService
        .authTwo(otp: otpCode, token: otpToken)
        .then((NetworkResponse? response) {
      if (response is NetworkSuccessResponse) {
        // success response
        emit(OtpCodeSuccessState(response.data));
      } else if (response is NetworkErrorResponse) {
        emit(OtpCodeErrorState(response.error));
      } else if (response is NetworkExceptionResponse) {
        emit(OtpCodeErrorState(response.exception));
      }
    });
  }

  Future<void> authOne(
      {required String password, required String phone}) async {
    emit(OtpCodeLoadingState());
    await authService
        .authOne(password: password, phone: phone)
        .then((NetworkResponse? response) {
      if (response is NetworkSuccessResponse) {
        emit(OtpCodeInitState());
      } else if (response is NetworkErrorResponse) {
        showMessage(response.error);
        emit(OtpCodeErrorState(response.error));
      } else if (response is NetworkExceptionResponse) {
        showMessage(response.exception);
        emit(OtpCodeErrorState(response.exception));
      }
    });
  }
}
