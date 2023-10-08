import 'package:fintechreal/core/extensions/build_context_size_widget.dart';
import 'package:fintechreal/core/theme/fintech_theme.dart';
import 'package:fintechreal/core/widgets/loading_widget.dart';
import 'package:fintechreal/core/widgets/popular_question_widget.dart';
import 'package:fintechreal/core/widgets/task_widget.dart';
import 'package:fintechreal/cubit/monitoring/algoritm/algoritm_states.dart';
import 'package:fintechreal/view/pages/algorithm/questions_page.dart';
import 'package:fintechreal/view/pages/home/notification_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class AlgoritmPage extends StatelessWidget {
  const AlgoritmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AlgoritmCubit(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: FintechColors.blackPearl,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: FintechColors.lightGrey,
                backgroundImage: const AssetImage(
                  'assets/b8080715de29eabbbba78c1b2c9d70be.png',
                ),
              ),
              SvgPicture.asset(
                'assets/fintech_logo2.svg',
                width: 160,
              ),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NotificationPage(),
                  ),
                ),
                child: const Icon(
                  Icons.notification_add_outlined,
                  size: 28,
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: context.height * 0.02),
              Text(
                'Task',
                style: TextStyle(
                  color: FintechColors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: context.height * 0.01),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TaskWidget(),
                  TaskWidget(),
                  TaskWidget(),
                ],
              ),
              SizedBox(height: context.height * 0.01),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TaskWidget(),
                  TaskWidget(),
                  TaskWidget(),
                ],
              ),
              SizedBox(height: context.height * 0.01),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TaskWidget(),
                  TaskWidget(),
                  TaskWidget(),
                ],
              ),
              SizedBox(height: context.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular questions',
                    style: TextStyle(
                      color: FintechColors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuestionsPage(),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'All',
                          style: TextStyle(
                            color: FintechColors.black,
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                          ),
                        ),
                        const Icon(Icons.arrow_right),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: context.height * 0.02),
              BlocConsumer<AlgoritmCubit, AlgoritmStates>(
                listener: (context, state) {},
                builder: (context, state) {
                  if (state is AlgoritmLoadingState) {
                    return const LoadingWidget();
                  } else if (state is AlgoritmErrorState) {
                    return Center(
                      child: Text(state.error),
                    );
                  } else if (state is AlgoritmSuccessState) {
                    return Expanded(
                      flex: 5,
                      child: ListView.builder(
                        itemCount: state.data.data!.algorithms!.length,
                        itemBuilder: (context, index) {
                          return PopularQuestionWidget(
                            id: state.data.data!.algorithms![index].id
                                .toString(),
                            name: state.data.data!.algorithms![index].firstName
                                .toString(),
                            desc: state
                                .data.data!.algorithms![index].description
                                .toString(),
                            coin: state.data.data!.algorithms![index].bonus
                                .toString(),
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
      ),
    );
  }
}

/* if (state is AlgoritmLoadingState) {
                    return const LoadingWidget();
                  } else if (state is AlgoritmErrorState) {
                    return Center(
                      child: Text(state.error),
                    );
                  } else if (state is AlgoritmSuccessState) {
                    return Expanded(
                      child: ListView.builder(
                        itemCount: state.data.data!.algorithms!.length,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: context.width * 0.03,
                                  vertical: context.height * 0.02,
                                ),
                                decoration: BoxDecoration(
                                  color: FintechColors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(1.2, 2.5),
                                      blurRadius: 4,
                                      spreadRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Image.asset('assets/js-file 1.png'),
                                    SizedBox(height: context.height * 0.008),
                                    Text(
                                      state.data.data!.algorithms![index]
                                          .description
                                          .toString(),
                                      style: TextStyle(
                                        color: FintechColors.black,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    );
                  } else {
                    return const SizedBox();
                  } */