import 'package:fintechreal/core/config/network_response_config.dart';
import 'package:fintechreal/data/models/user%20settings/user%20info/user_info_model.dart';
import 'package:fintechreal/data/service/user%20settings/user%20settings/user_setting_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'user_info_cubit.dart';

abstract class UserInfoStates {
  UserInfoStates();
}

class UserInfoInitState extends UserInfoStates {
  UserInfoInitState();
}

class UserInfoLoadingState extends UserInfoStates {
  UserInfoLoadingState();
}

class UserInfoSuccessState extends UserInfoStates {
  UserInfoModel data;
  UserInfoSuccessState(this.data);
}

class UserInfoErrorState extends UserInfoStates {
  final String error;
  UserInfoErrorState(this.error);
}
