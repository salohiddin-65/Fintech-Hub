import 'package:fintechreal/core/extensions/build_context_size_widget.dart';
import 'package:fintechreal/core/theme/fintech_theme.dart';
import 'package:fintechreal/core/widgets/loading_widget.dart';
import 'package:fintechreal/cubit/monitoring/home/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({
    Key? key,
    // required this.img,
    required this.title,
    required this.id,
  }) : super(key: key);
  // final String img;
  final String title;
  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
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
            return Container(
              width: context.height * 0.03,
              decoration: BoxDecoration(
                color: FintechColors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: FintechColors.grey,
                    offset: const Offset(1, 2),
                    blurRadius: 4,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.asset(
                      "assets/happy-manager-leads-a-meeting-in-the-office-scaled 1.png",
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: context.height * 0.01),
                  Text(
                    title,
                    style: TextStyle(
                      color: FintechColors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(height: context.height * 0.005),
                  Text(
                    id,
                    style: TextStyle(
                      color: FintechColors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: context.height * 0.01),
                ],
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
