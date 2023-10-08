import 'package:fintechreal/core/extensions/build_context_size_widget.dart';
import 'package:fintechreal/core/theme/fintech_theme.dart';
import 'package:flutter/material.dart';

class RankingWidget extends StatelessWidget {
  const RankingWidget({
    Key? key,
    required this.id,
    required this.userName,
    required this.balance,
    // required this.img,
  }) : super(key: key);
  final String id;
  final String userName;
  final String balance;
  // final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FintechColors.white,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: FintechColors.grey,
            offset: const Offset(0, 2),
            blurRadius: 4,
            spreadRadius: 1,
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(
        vertical: context.height * 0.008,
        horizontal: context.width * 0.03,
      ),
      padding: EdgeInsets.symmetric(vertical: context.height * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(width: context.width * 0.03),
              Text(
                id,
                style: TextStyle(
                  color: FintechColors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
              SizedBox(width: context.width * 0.04),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 20,
                    // backgroundImage: AssetImage(img),
                  ),
                  SizedBox(width: context.width * 0.03),
                  Text(
                    userName,
                    style: TextStyle(
                      color: FintechColors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Image.asset('assets/money-bag 3.png'),
              SizedBox(width: context.width * 0.02),
              Text(
                balance,
                style: TextStyle(
                  color: FintechColors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 15,
                ),
              ),
              SizedBox(width: context.width * 0.03),
            ],
          ),
        ],
      ),
    );
  }
}
