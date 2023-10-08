// ignore_for_file: deprecated_member_use
import 'package:fintechreal/core/theme/fintech_theme.dart' show FintechColors;
import 'package:fintechreal/core/widgets/curved%20navigation%20bar%20widget/curved_navigation_bar.dart'
    show CurvedNavigationBarState, CurvedNavigationBar;
import 'package:fintechreal/view/pages/algorithm/algoritm_page.dart'
    show AlgoritmPage;
import 'package:fintechreal/view/pages/home/home_page.dart' show HomePage;
import 'package:fintechreal/view/pages/profile/profile_page.dart'
    show ProfilePage;
import 'package:flutter/material.dart'
    show
        StatefulWidget,
        Key,
        State,
        GlobalKey,
        Widget,
        BuildContext,
        Icon,
        Icons,
        Scaffold,
        IndexedStack;

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 1;

  final screens = [
    const ProfilePage(),
    const HomePage(),
    const AlgoritmPage(),
    // const ShopPage(),
    // const BasketPage(),
  ];

  @override
  Widget build(BuildContext context) {
    // Items
    final items = <Widget>[
      Icon(Icons.person, size: 30, color: FintechColors.white),
      Icon(Icons.home, size: 30, color: FintechColors.white),
      Icon(Icons.webhook_rounded, size: 30, color: FintechColors.white),
      // Icon(Icons.shopping_bag_outlined, size: 30, color: FintechColors.white),
      // Icon(Icons.shopping_cart_outlined, size: 30, color: FintechColors.white),
    ];
    /* ---------- */
    return Scaffold(
      extendBody: true,
      backgroundColor: FintechColors.butterflyBlue,
      // body
      body: IndexedStack(index: index, children: screens),
      bottomNavigationBar: CurvedNavigationBar(
        color: FintechColors.gondola,
        backgroundColor: FintechColors.transparent,
        height: 60,
        index: index,
        items: items,
        onTap: (index) => setState(() => this.index = index),
      ),
    );
  }
}
