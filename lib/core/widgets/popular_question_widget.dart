import 'package:fintechreal/core/extensions/build_context_size_widget.dart';
import 'package:fintechreal/core/theme/fintech_theme.dart';
import 'package:flutter/material.dart';

class PopularQuestionWidget extends StatelessWidget {
  const PopularQuestionWidget({
    Key? key,
    required this.id,
    required this.name,
    required this.desc,
    required this.coin,
  }) : super(key: key);
  final String id;
  final String name;
  final String desc;
  final String coin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: context.width * 0.005),
      padding: EdgeInsets.symmetric(vertical: context.height * 0.03),
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
      child: Padding(
        padding: EdgeInsets.only(left: context.width * 0.03),
        child: Row(
          children: [
            Row(
              children: [
                SizedBox(width: context.width * 0.01),
                Text(
                  id,
                  style: TextStyle(
                    color: FintechColors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: context.width * 0.02),
                Text(name),
              ],
            ),
            SizedBox(width: context.width * 0.15),
            Text(desc),
            SizedBox(width: context.width * 0.26),
            Text(coin),
          ],
        ),
      ),
    );
  }
}
