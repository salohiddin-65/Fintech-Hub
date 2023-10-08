import 'package:fintechreal/core/extensions/build_context_size_widget.dart';
import 'package:fintechreal/core/widgets/popular_question_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;

class QuestionsPage extends StatelessWidget {
  const QuestionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff00171f),
        title: SvgPicture.asset(
          'assets/fintech_logo2.svg',
          width: 160,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.width * 0.03),
        child: Column(
          children: [
            SizedBox(height: context.height * 0.01),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: context.height * 0.015),
                    child: const PopularQuestionWidget(
                      id: "id",
                      name: "name",
                      desc: "desc",
                      coin: "coin",
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
