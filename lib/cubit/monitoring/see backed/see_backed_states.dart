import 'package:fintechreal/core/config/network_response_config.dart';
import 'package:fintechreal/data/models/monitoring/see%20backed/see_backed_model.dart';
import 'package:fintechreal/data/service/monitoring/see%20backed/see_backed_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'see_backed_cubit.dart';

abstract class SeeBackedStates {
  SeeBackedStates();
}

class SeeBackedInitState extends SeeBackedStates {
  SeeBackedInitState();
}

class SeeBackedLoadingState extends SeeBackedStates {
  SeeBackedLoadingState();
}

class SeeBackedSuccessState extends SeeBackedStates {
  SeeBackedModel data;
  SeeBackedSuccessState(this.data);
}

class SeeBackedErrorState extends SeeBackedStates {
  final String error;
  SeeBackedErrorState(this.error);
}
