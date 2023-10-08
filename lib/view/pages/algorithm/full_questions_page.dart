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
        Scaffold,
        AppBar,
        Padding,
        EdgeInsets,
        Column,
        CrossAxisAlignment,
        SizedBox,
        ClipRRect,
        BorderRadius,
        Image,
        BoxFit,
        Text,
        TextStyle,
        FontWeight,
        ElevatedButton,
        ButtonStyle,
        MaterialStatePropertyAll,
        Color;

class FullQuestionPage extends StatelessWidget {
  const FullQuestionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FintechColors.blackPearl,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: context.height * 0.03,
            ),
            SizedBox(
              width: double.infinity,
              height: context.height * 0.3,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/Fintech.png",
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(
              height: context.height * 0.02,
            ),
            const Text(
              "opisniya dosicjiosd dsicnidso cdsjcndsio dsovindso vodsnvodsnv dsovnds voidsnvs dvodsvnsd sdo osnd codsn dsnvodsvn dslo dsonvodsn",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: context.height * 0.3,
            ),
            SizedBox(
              width: double.infinity,
              height: context.height * 0.06,
              child: ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xff241023))),
                child: const Text(
                  "Answer",
                  style: TextStyle(fontSize: 19),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
