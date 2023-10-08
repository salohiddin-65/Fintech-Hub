import 'package:fintechreal/core/extensions/build_context_size_widget.dart'
    show BuildContextSize;
import 'package:fintechreal/core/widgets/menu-item/items/menu_item.dart'
    show MenuItem;
import 'package:fintechreal/core/widgets/menu-item/items/menu_items.dart'
    show MenuItems;
import 'package:fintechreal/view/register/logIn/log_in_page.dart'
    show LogInPage;
import 'package:flutter/material.dart'
    show
        StatelessWidget,
        Key,
        Widget,
        BuildContext,
        PopupMenuButton,
        PopupMenuItem,
        Row,
        Text,
        showModalBottomSheet,
        RoundedRectangleBorder,
        BorderRadius,
        Radius,
        SizedBox,
        Column,
        CrossAxisAlignment,
        Padding,
        EdgeInsets,
        TextStyle,
        FontWeight,
        Navigator,
        MaterialPageRoute;

class PopupMenuButtonWidget extends StatelessWidget {
  const PopupMenuButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      onSelected: (item) => onSelected(context, item),
      itemBuilder: (context) => MenuItems.itemFirst.map(buildItem).toList(),
    );
  }

  PopupMenuItem<MenuItem> buildItem(MenuItem item) => PopupMenuItem(
        child: Row(
          children: [
            Text(item.text),
          ],
        ),
      );

  void onSelected(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.menuEdit:
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          builder: (BuildContext context) {
            return SizedBox(
              height: context.height * 0.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: context.height * 0.03),
                  Padding(
                    padding: EdgeInsets.only(left: context.width * 0.055),
                    child: const Text(
                      "Choose photo or video",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: context.height * 0.02),
                ],
              ),
            );
          },
        );
        break;
      case MenuItems.menuLogOut:
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const LogInPage(),
            ),
            (route) => false);
        break;
      default:
    }
  }
}
