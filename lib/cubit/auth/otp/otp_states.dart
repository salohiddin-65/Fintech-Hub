import 'package:fintechreal/core/config/network_response_config.dart'
    show
        NetworkErrorResponse,
        NetworkExceptionResponse,
        NetworkResponse,
        NetworkSuccessResponse;
import 'package:fintechreal/core/widgets/show_message.dart'
    show showMessage;
import 'package:fintechreal/data/service/auth/login/login_service.dart'
    show AuthService;
import 'package:flutter_bloc/flutter_bloc.dart' show Cubit;
part 'otp_cubit.dart';

abstract class OtpCodeStates {
  OtpCodeStates();
}

class OtpCodeInitState extends OtpCodeStates {
  OtpCodeInitState();
}

class OtpCodeLoadingState extends OtpCodeStates {
  OtpCodeLoadingState();
}

class OtpCodeSuccessState extends OtpCodeStates {
  final bool isRegistered;
  OtpCodeSuccessState(this.isRegistered);
}

class OtpCodeErrorState extends OtpCodeStates {
  final String error;
  OtpCodeErrorState(this.error);
}
