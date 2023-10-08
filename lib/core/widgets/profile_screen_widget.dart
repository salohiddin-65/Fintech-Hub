import 'package:fintechreal/core/extensions/build_context_size_widget.dart'
    show BuildContextSize;
import 'package:fintechreal/core/theme/fintech_theme.dart'
    show FintechColors;
import 'package:flutter/material.dart'
    show
        StatelessWidget,
        Key,
        Widget,
        BuildContext,
        Container,
        EdgeInsets,
        BoxDecoration,
        BorderRadius,
        BoxShadow,
        Colors,
        Offset,
        Radius,
        Padding,
        Column,
        CrossAxisAlignment,
        Row,
        Text,
        TextStyle,
        FontWeight,
        SizedBox,
        MainAxisAlignment;

class ProfileScreenWidget extends StatelessWidget {
  const ProfileScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: context.height * 0.02),
      decoration: BoxDecoration(
        color: FintechColors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(2, 3),
            blurRadius: 4,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.width * 0.05,
          vertical: context.height * 0.017,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '1)',
                  style: TextStyle(
                    color: FintechColors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
                SizedBox(width: context.width * 0.02),
                Text(
                  "Question: ...... ",
                  style: TextStyle(
                    color: FintechColors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: context.height * 0.008,
            ),
            Text(
              "Your answer:.....",
              style: TextStyle(
                color: FintechColors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: context.height * 0.015,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: context.width * 0.02,
                    vertical: context.height * 0.005,
                  ),
                  child: Text(
                    "tekshirilmoqda...",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: FintechColors.blackPearl,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
