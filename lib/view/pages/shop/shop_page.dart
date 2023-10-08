import 'package:fintechreal/core/extensions/build_context_size_widget.dart';
import 'package:fintechreal/core/theme/fintech_theme.dart';
import 'package:fintechreal/core/widgets/all_products_widget.dart';
import 'package:fintechreal/core/widgets/filters_widget.dart';
import 'package:fintechreal/core/widgets/loading_widget.dart';
import 'package:fintechreal/cubit/monitoring/home/home_states.dart';
import 'package:fintechreal/cubit/monitoring/see%20backed/see_backed_states.dart';
import 'package:fintechreal/view/pages/home/notification_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff00171f),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: FintechColors.lightGrey,
              backgroundImage: const AssetImage(
                  'assets/b8080715de29eabbbba78c1b2c9d70be.png'),
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: context.height * 0.02),
              BlocProvider(
                create: (context) => HomeCubit(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: context.width * 0.03,
                        vertical: context.height * 0.01,
                      ),
                      decoration: const BoxDecoration(
                        color: Color(0xff241023),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/money-bag 3.png'),
                          SizedBox(width: context.width * 0.02),
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
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16,
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
                  ],
                ),
              ),
              SizedBox(height: context.height * 0.01),
              Text(
                'Filters',
                style: TextStyle(
                  color: FintechColors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: context.height * 0.02),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    BlocConsumer<SeeBackedCubit, SeeBackedStates>(
                      listener: (context, state) {},
                      builder: (context, state) {
                        if (state is SeeBackedLoadingState) {
                          return const LoadingWidget();
                        } else if (state is SeeBackedErrorState) {
                          return Center(
                            child: Text(state.error),
                          );
                        } else if (state is SeeBackedSuccessState) {
                          return FiltersWidget(
                            img: state.data.data![0].productImg.toString(),
                            title: state.data.data![0].productName.toString(),
                          );
                        } else {
                          return const SizedBox();
                        }
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: context.height * 0.03),
              Text(
                'All Products',
                style: TextStyle(
                  color: FintechColors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: context.height * 0.02),
              BlocProvider(
                create: (context) => SeeBackedCubit(),
                child: BlocConsumer<SeeBackedCubit, SeeBackedStates>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    if (state is SeeBackedLoadingState) {
                      return const LoadingWidget();
                    } else if (state is SeeBackedErrorState) {
                      return Center(
                        child: Text(state.error),
                      );
                    } else if (state is SeeBackedSuccessState) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AllProductsWidget(
                            image: state.data.data![0].productImg.toString(),
                            title: state.data.data![0].productName.toString(),
                          ),
                        ],
                      );
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
              ),
              SizedBox(height: context.height * 0.03),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // AllProductsWidget(),
                ],
              ),
              SizedBox(height: context.height * 0.03),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // AllProductsWidget(),
                ],
              ),
              SizedBox(height: context.height * 0.1),
            ],
          ),
        ),
      ),
    );
  }
}
