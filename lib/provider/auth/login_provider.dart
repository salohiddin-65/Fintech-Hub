import 'package:fintechreal/core/config/network_response_config.dart'
    show
        NetworkErrorResponse,
        NetworkExceptionResponse,
        NetworkResponse,
        NetworkSuccessResponse;
import 'package:fintechreal/data/service/auth/login/login_service.dart'
    show AuthService;
import 'package:flutter/material.dart'
    show ChangeNotifier, TextEditingController, debugPrint;

class LoginProvider extends ChangeNotifier {
  // Controllers
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoading = false;
  // instance
  AuthService authService = AuthService();
  Map<String, dynamic>? data;
  String error = '';

  Future<void> login() async {
    isLoading = true;
    notifyListeners();
    NetworkResponse? response = await authService.authOne(
        password: passwordController.text, phone: phoneNumberController.text);
    if (response is NetworkSuccessResponse) {
      debugPrint(response.data.toString());
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
