import 'package:fintechreal/core/widgets/loading_widget.dart';
import 'package:fintechreal/core/widgets/ranking_widget.dart';
import 'package:fintechreal/cubit/monitoring/home/home_states.dart';
import 'package:fintechreal/data/service/user%20settings/home/home_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: RefreshIndicator(
        onRefresh: () => HomeService().getHome(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff00171f),
            title: SvgPicture.asset(
              'assets/fintech_logo2.svg',
              width: 160,
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Expanded(
                flex: 2,
                child: BlocConsumer<HomeCubit, HomeStates>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    if (state is HomeLoadingState) {
                      return const LoadingWidget();
                    } else if (state is HomeErrorState) {
                      return Center(
                        child: Text(state.error),
                      );
                    } else if (state is HomeSuccessState) {
                      return ListView.builder(
                        itemCount: state.data.data!.rating!.length,
                        itemBuilder: (context, index) {
                          return RankingWidget(
                            id: state.data.data!.rating![index].id.toString(),
                            userName: state.data.data!.rating![index].username
                                .toString(),
                            balance: state.data.data!.rating![index].balance
                                .toString(),
                            // img: state.data.data!.rating![index].avatar
                            //     .toString(),
                          );
                        },
                      );
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
