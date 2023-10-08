import 'package:fintechreal/core/config/network_response_config.dart'
    show
        NetworkErrorResponse,
        NetworkExceptionResponse,
        NetworkResponse,
        NetworkSuccessResponse;
import 'package:fintechreal/data/service/auth/login/login_service.dart'
    show AuthService;
import 'package:flutter/material.dart'
    show ChangeNotifier, TextEditingController;

class AuthTwoProvider extends ChangeNotifier {
  // Controller
  TextEditingController otpCodeController = TextEditingController();

  bool isLoading = false;
  // instance
  AuthService authService = AuthService();
  Map<String, dynamic>? data;
  String error = '';

  Future<void> authTwo({required String token}) async {
    isLoading = true;
    notifyListeners();
    NetworkResponse? response =
        await authService.authTwo(otp: otpCodeController.text, token: token);
    if (response is NetworkSuccessResponse) {
      isLoading = false;
      data = response.data;
      notifyListeners();
    } else if (response is NetworkExceptionResponse) {
      isLoading = false;
      error = response.exception;
      notifyListeners();
    } else if (response is NetworkErrorResponse) {
      isLoading = false;
      error = response.error;
      notifyListeners();
    }
  }
}
