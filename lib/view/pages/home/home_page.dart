import 'package:fintechreal/core/extensions/build_context_size_widget.dart';
import 'package:fintechreal/core/theme/fintech_theme.dart';
import 'package:fintechreal/core/widgets/loading_widget.dart';
import 'package:fintechreal/core/widgets/news_widget.dart';
import 'package:fintechreal/core/widgets/ranking_widget.dart';
import 'package:fintechreal/cubit/monitoring/home/home_states.dart';
import 'package:fintechreal/view/pages/home/notification_page.dart';
import 'package:fintechreal/view/pages/mentors/mentors_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: _scaffold(context),
    );
  }

  Scaffold _scaffold(BuildContext context) {
    return Scaffold(
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
      // body
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.width * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: context.height * 0.015),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MentorsPage(),
                    ),
                  ),
                  child: Container(
                    width: context.width * 0.42,
                    height: context.height * 0.18,
                    decoration: BoxDecoration(
                      color: FintechColors.gondola,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: FintechColors.grey,
                          offset: const Offset(1, 3.5),
                          blurRadius: 4,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: context.height * 0.02),
                        Image.asset('assets/teacher1.png', width: 80),
                        SizedBox(height: context.height * 0.01),
                        Text(
                          'Mentor',
                          style: TextStyle(
                            color: FintechColors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: context.width * 0.42,
                  height: context.height * 0.18,
                  decoration: BoxDecoration(
                    color: FintechColors.gondola,
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: FintechColors.grey,
                        offset: const Offset(0, 2),
                        blurRadius: 4,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: context.height * 0.02),
                      Image.asset('assets/dollar 1.png'),
                      SizedBox(height: context.height * 0.01),
                      BlocConsumer<HomeCubit, HomeStates>(
                        listener: (context, state) {},
                        builder: (context, state) {
                          if (state is HomeLoadingState) {
                            return const LoadingWidget();
                          } else if (state is HomeErrorState) {
                            return Center(
                              child: Text(state.error),
                            );
                          } else if (state is HomeSuccessState) {
                            return Text(
                              state.data.data!.balance.toString(),
                              style: TextStyle(
                                color: FintechColors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 25,
                              ),
                            );
                          } else {
                            return const SizedBox();
                          }
                        },
                      ),
                      SizedBox(height: context.height * 0.01),
                      Text(
                        'fins',
                        style: TextStyle(
                          color: FintechColors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 22,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: context.height * 0.03),
            Text(
              'Reyting',
              style: TextStyle(
                color: FintechColors.black,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
            SizedBox(height: context.height * 0.015),
            Container(
              width: double.infinity,
              height: context.height * 0.25,
              padding: const EdgeInsets.only(bottom: 10, top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: FintechColors.grey,
                    offset: const Offset(1, 1),
                    blurRadius: 6,
                    spreadRadius: 1,
                  ),
                ],
                color: FintechColors.white,
              ),
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
                        );
                      },
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              ),
            ),
            SizedBox(height: context.height * 0.02),
            Text(
              'Yangiliklar',
              style: TextStyle(
                color: FintechColors.black,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
            SizedBox(height: context.height * 0.015),
            Expanded(
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
                      itemCount: state.data.data!.news!.length,
                      itemBuilder: (context, index) {
                        return NewsWidget(
                          // img: state.data.data!.news![index].img.toString(),
                          title: state.data.data!.news![index].title.toString(),
                          id: state.data.data!.news![index].id.toString(),
                        );
                      },
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
