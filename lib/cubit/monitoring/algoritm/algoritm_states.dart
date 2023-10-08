import 'package:fintechreal/core/config/network_response_config.dart';
import 'package:fintechreal/data/models/monitoring/algoritm/algoritm_model.dart';
import 'package:fintechreal/data/service/monitoring/algoritm/algoritm_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'algoritm_cubit.dart';

abstract class AlgoritmStates {
  AlgoritmStates();
}

class AlgoritmInitState extends AlgoritmStates {
  AlgoritmInitState();
}

class AlgoritmLoadingState extends AlgoritmStates {
  AlgoritmLoadingState();
}

class AlgoritmSuccessState extends AlgoritmStates {
  AlgoritmModel data;
  AlgoritmSuccessState(this.data);
}

class AlgoritmErrorState extends AlgoritmStates {
  final String error;
  AlgoritmErrorState(this.error);
}
