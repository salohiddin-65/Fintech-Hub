import 'package:fintechreal/core/extensions/build_context_size_widget.dart';
import 'package:fintechreal/core/theme/fintech_theme.dart';
import 'package:flutter/material.dart';

class AllProductsWidget extends StatelessWidget {
  const AllProductsWidget({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          padding: EdgeInsets.symmetric(
            horizontal: context.width * 0.025,
            vertical: context.height * 0.015,
          ),
          decoration: BoxDecoration(
            color: FintechColors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(2.5, 2),
                blurRadius: 4,
                spreadRadius: 1,
              ),
            ],
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Image.asset(
            image,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(height: context.height * 0.01),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: context.width * 0.02,
            vertical: context.height * 0.005,
          ),
          decoration: const BoxDecoration(
            color: Color(0xff241023),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: Row(
            children: [
              Image.asset('assets/dollar 1.png', width: 22),
              SizedBox(width: context.width * 0.01),
              Text(
                title,
                style: TextStyle(
                  color: FintechColors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
