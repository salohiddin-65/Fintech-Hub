import 'package:fintechreal/core/extensions/build_context_size_widget.dart';
import 'package:fintechreal/core/theme/fintech_theme.dart';
import 'package:flutter/material.dart';

class FiltersWidget extends StatelessWidget {
  const FiltersWidget({
    Key? key,
    required this.img,
    required this.title,
  }) : super(key: key);
  final String img;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          padding: EdgeInsets.symmetric(
            horizontal: context.width * 0.02,
            vertical: context.height * 0.012,
          ),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            color: FintechColors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(2, 2),
                blurRadius: 4,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Image.asset(
            img,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(height: context.height * 0.005),
        Text(
          title,
          style: TextStyle(
            color: FintechColors.black,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
