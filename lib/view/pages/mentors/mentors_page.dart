import 'package:fintechreal/core/extensions/build_context_size_widget.dart';
import 'package:fintechreal/core/theme/fintech_theme.dart';
import 'package:fintechreal/core/widgets/loading_widget.dart';
import 'package:fintechreal/cubit/monitoring/mentors/mentors_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class MentorsPage extends StatelessWidget {
  const MentorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MentorsCubit>(
      create: (context) => MentorsCubit(),
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
            SizedBox(height: context.height * 0.03),
            BlocConsumer<MentorsCubit, MentorsStates>(
              listener: (context, state) {},
              builder: (context, state) {
                if (state is MentorsLoadingState) {
                  return const LoadingWidget();
                } else if (state is MentorsErrorState) {
                  return Center(
                    child: Text(state.error),
                  );
                } else if (state is MentorsSuccessState) {
                  return Expanded(
                    flex: 5,
                    child: ListView.builder(
                      itemCount: state.data.data!.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(
                            left: context.width * 0.05,
                            right: context.width * 0.05,
                            bottom: context.height * 0.02,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: FintechColors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(2, 3),
                                blurRadius: 3,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/Mask group.png",
                                fit: BoxFit.fill,
                                width: double.infinity,
                              ),
                              SizedBox(height: context.height * 0.015),
                              Text(
                                state.data.data![index].username.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: FintechColors.black,
                                  fontSize: 22,
                                ),
                              ),
                              SizedBox(height: context.height * 0.012),
                              Text(
                                state.data.data![index].specialty.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: FintechColors.black,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: context.height * 0.012),
                              Text(
                                state.data.data![index].level.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: FintechColors.black,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: context.height * 0.012),
                            ],
                          ),
                        );
                      },
                    ),
                  );
                } else {
                  return const SizedBox();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
