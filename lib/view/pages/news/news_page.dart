import 'package:fintechreal/core/extensions/build_context_size_widget.dart';
import 'package:fintechreal/core/theme/fintech_theme.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FintechColors.blackPearl,
        title: SvgPicture.asset(
          'assets/fintech_logo2.svg',
          width: 160,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: context.height * 0.03,
              ),
              Container(
                width: double.infinity,
                height: context.height * 0.3,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(2, 2),
                      blurRadius: 4,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/pexels-rebrand-cities-1367274 2.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: context.height * 0.02,
              ),
              Text(
                "Meeting about Full Stack Developing",
                style: TextStyle(
                  color: FintechColors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: context.height * 0.01,
              ),
              Text(
                "opisniya dosicjiosd dsicnidso cdsjcndsio dsovindso vodsnvodsnv dsovnds voidsnvs dvodsvnsd sdo osnd codsn dsnvodsvn dslo dsonvodsn",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: FintechColors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
