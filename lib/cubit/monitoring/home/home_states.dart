import 'package:fintechreal/core/config/network_response_config.dart';
import 'package:fintechreal/data/models/monitoring/home/home_page_model.dart';
import 'package:fintechreal/data/service/user%20settings/home/home_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'home_cubit.dart';

abstract class HomeStates {
  HomeStates();
}

class HomeInitState extends HomeStates {
  HomeInitState();
}

class HomeLoadingState extends HomeStates {
  HomeLoadingState();
}

class HomeSuccessState extends HomeStates {
  HomePageModel data;
  HomeSuccessState(this.data);
}

class HomeErrorState extends HomeStates {
  final String error;
  HomeErrorState(this.error);
}
