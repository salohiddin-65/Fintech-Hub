import 'package:fintechreal/core/config/network_response_config.dart';
import 'package:fintechreal/data/models/monitoring/all%20card/all_card_model.dart';
import 'package:fintechreal/data/service/monitoring/all%20card/all_card_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'all_card_cubit.dart';

abstract class AllCardStates {
  AllCardStates();
}

class AllCardInitState extends AllCardStates {
  AllCardInitState();
}

class AllCardLoadingState extends AllCardStates {
  AllCardLoadingState();
}

class AllCardSuccessState extends AllCardStates {
  AllCardModel data;
  AllCardSuccessState(this.data);
}

class AllCardErrorState extends AllCardStates {
  final String error;
  AllCardErrorState(this.error);
}
