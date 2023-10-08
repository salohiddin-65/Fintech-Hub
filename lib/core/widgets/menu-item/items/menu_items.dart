import 'package:fintechreal/core/widgets/menu-item/items/menu_item.dart'
    show MenuItem;

class MenuItems {
  static const List<MenuItem> itemFirst = [
    menuEdit,
    menuLogOut,
  ];

  static const menuEdit = MenuItem(
    text: "Edit Name",
  );

  static const menuLogOut = MenuItem(
    text: "Log Out",
  );
}
