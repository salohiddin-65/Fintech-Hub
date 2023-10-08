import 'package:fintechreal/core/config/network_response_config.dart';
import 'package:fintechreal/data/models/monitoring/mentors/mentors_model.dart';
import 'package:fintechreal/data/service/monitoring/mentors/mentors_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'mentors_cubit.dart';

abstract class MentorsStates {
  MentorsStates();
}

class MentorsInitState extends MentorsStates {
  MentorsInitState();
}

class MentorsLoadingState extends MentorsStates {
  MentorsLoadingState();
}

class MentorsSuccessState extends MentorsStates {
  MentorsModel data;
  MentorsSuccessState(this.data);
}

class MentorsErrorState extends MentorsStates {
  final String error;
  MentorsErrorState(this.error);
}
