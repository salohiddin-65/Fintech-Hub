import 'package:fintechreal/core/extensions/build_context_size_widget.dart';
import 'package:fintechreal/core/theme/fintech_theme.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({Key? key}) : super(key: key);

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
            const Icon(
              Icons.notification_add_outlined,
              size: 28,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: context.height * 0.02),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: context.width * 0.42,
                  height: context.height * 0.18,
                  decoration: const BoxDecoration(
                    color: Color(0xff241023),
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(1, 3.5),
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
                      Text(
                        '1 000 000',
                        style: TextStyle(
                          color: FintechColors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(height: context.height * 0.01),
                      Text(
                        'Umumiy',
                        style: TextStyle(
                          color: FintechColors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 22,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: context.width * 0.42,
                  height: context.height * 0.18,
                  decoration: const BoxDecoration(
                    color: Color(0xff241023),
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 2),
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
                      Text(
                        '1 000 000',
                        style: TextStyle(
                          color: FintechColors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                        ),
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
          ),
          SizedBox(
            height: context.height * 0.03,
          ),
          Container(
            width: double.infinity,
            height: context.height * 0.47,
            margin: EdgeInsets.symmetric(horizontal: context.width * 0.02),
            padding: const EdgeInsets.only(bottom: 10, top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(1, 1),
                  blurRadius: 6,
                  spreadRadius: 1,
                ),
              ],
              color: FintechColors.white,
            ),
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return null;
                // return const RankingWidget();
              },
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(
            bottom: context.height * 0.08,
            right: context.width * 0.05,
            left: context.width * 0.05),
        child: SizedBox(
          width: double.infinity,
          height: context.height * 0.06,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
                backgroundColor:
                    MaterialStatePropertyAll(FintechColors.gondola)),
            child: const Text(
              "Sotib olish",
              style: TextStyle(fontSize: 19),
            ),
          ),
        ),
      ),
    );
  }
}
