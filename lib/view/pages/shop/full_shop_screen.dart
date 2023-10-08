import 'package:fintechreal/core/extensions/build_context_size_widget.dart';
import 'package:fintechreal/core/theme/fintech_theme.dart';
import 'package:flutter/material.dart';

class FullShopScreen extends StatelessWidget {
  const FullShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FintechColors.blackPearl,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: context.height * 0.02),
            Center(
              child: Container(
                width: context.width * 0.55,
                height: context.height * 0.3,
                decoration: BoxDecoration(
                  color: FintechColors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(2, 2),
                      blurRadius: 4,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      width: context.width * 0.5,
                      height: context.height * 0.255,
                      padding: EdgeInsets.symmetric(
                        horizontal: context.width * 0.01,
                        vertical: context.height * 0.015,
                      ),
                      child: Image.asset(
                        'assets/png-transparent-hoodie-t-shirt-scotty-sire-hoodie-hat-hoodie-black 1.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      'Hoodie',
                      style: TextStyle(
                        color: FintechColors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: context.height * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.width * 0.06),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.width * 0.05,
                      vertical: context.height * 0.001,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: FintechColors.blackPearl,
                    ),
                    child: Icon(
                      Icons.keyboard_arrow_left_outlined,
                      size: 40,
                      color: FintechColors.white,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.width * 0.05,
                      vertical: context.height * 0.001,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: FintechColors.blackPearl,
                    ),
                    child: Icon(
                      Icons.keyboard_arrow_right_outlined,
                      size: 40,
                      color: FintechColors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: context.height * 0.02),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: context.width * 0.08),
              padding: EdgeInsets.symmetric(
                horizontal: context.width * 0.05,
                vertical: context.height * 0.02,
              ),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(2, 2),
                    blurRadius: 4,
                    spreadRadius: 2,
                  ),
                ],
                color: FintechColors.white,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Size:',
                        style: TextStyle(
                          color: FintechColors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: context.width * 0.045,
                          vertical: context.height * 0.005,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          color: FintechColors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(2, 2),
                              blurRadius: 4,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: Text(
                          'L',
                          style: TextStyle(
                            color: FintechColors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: context.width * 0.045,
                          vertical: context.height * 0.005,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          color: FintechColors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(2, 2),
                              blurRadius: 4,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: Text(
                          'X',
                          style: TextStyle(
                            color: FintechColors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: context.width * 0.045,
                          vertical: context.height * 0.005,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          color: FintechColors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(2, 2),
                              blurRadius: 4,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: Text(
                          'XL',
                          style: TextStyle(
                            color: FintechColors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: context.width * 0.045,
                          vertical: context.height * 0.005,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          color: FintechColors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(2, 2),
                              blurRadius: 4,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: Text(
                          'XXL',
                          style: TextStyle(
                            color: FintechColors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: context.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Color:',
                        style: TextStyle(
                          color: FintechColors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: context.width * 0.045,
                          vertical: context.height * 0.005,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          color: FintechColors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(2, 2),
                              blurRadius: 4,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: Text(
                          'white',
                          style: TextStyle(
                            color: FintechColors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: context.width * 0.045,
                          vertical: context.height * 0.005,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          color: FintechColors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(2, 2),
                              blurRadius: 4,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: Text(
                          'black',
                          style: TextStyle(
                            color: FintechColors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: context.width * 0.045,
                          vertical: context.height * 0.005,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          color: FintechColors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(2, 2),
                              blurRadius: 4,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: Text(
                          'grey',
                          style: TextStyle(
                            color: FintechColors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: context.height * 0.02),
                  Row(
                    children: [
                      Text(
                        'Price:',
                        style: TextStyle(
                          color: FintechColors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(width: context.width * 0.03),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: context.width * 0.038,
                          vertical: context.height * 0.005,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          color: FintechColors.black,
                        ),
                        child: Row(
                          children: [
                            Image.asset('assets/dollar 1.png', width: 22),
                            SizedBox(width: context.width * 0.01),
                            Text(
                              '1000',
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
                  ),
                ],
              ),
            ),
            SizedBox(height: context.height * 0.015),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: context.width * 0.05,
                    vertical: context.height * 0.005,
                  ),
                  decoration: BoxDecoration(
                    color: FintechColors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(2, 2),
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Text(
                    'Buy',
                    style: TextStyle(
                      color: FintechColors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(width: context.width * 0.13),
              ],
            ),
            SizedBox(height: context.height * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.width * 0.06),
              child: Text(
                'Similar products',
                style: TextStyle(
                  color: FintechColors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: context.height * 0.02),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: context.width * 0.06),
                child: Row(
                  children: [
                    // const AllProductsWidget(),
                    // SizedBox(width: context.width * 0.05),
                    // const AllProductsWidget(),
                    // SizedBox(width: context.width * 0.05),
                    // const AllProductsWidget(),
                    // SizedBox(width: context.width * 0.05),
                    // const AllProductsWidget(),
                    // SizedBox(width: context.width * 0.05),
                    // const AllProductsWidget(),
                    // SizedBox(width: context.width * 0.05),
                    // const AllProductsWidget(),
                    // SizedBox(width: context.width * 0.05),
                    // const AllProductsWidget(),
                    // SizedBox(width: context.width * 0.05),
                    // const AllProductsWidget(),
                    // SizedBox(width: context.width * 0.05),
                    // const AllProductsWidget(),
                    // SizedBox(width: context.width * 0.05),
                    // const AllProductsWidget(),
                  ],
                ),
              ),
            ),
            SizedBox(height: context.height * 0.05),
          ],
        ),
      ),
    );
  }
}
