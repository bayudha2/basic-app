import 'package:flutter/material.dart';
import 'package:food_app/model/food_recipe.dart';

enum MenuFilter { dinner, breakfast, lunch }

class StoreModel extends ChangeNotifier {
  var listSelected = <MenuFilter>{};
  List<MenuReceip> listMenu = menuReceipList;

  Set<MenuFilter> get() => listSelected;
  List<MenuReceip> getMenu() => listMenu;

  void addItemm(MenuFilter menu) {
    listSelected.add(menu);
    listMenu = getFilteredMenu();
    notifyListeners();
  }

  void searchItem(String keyword) {
    var tmpList =
        getFilteredMenu().isEmpty ? menuReceipList : getFilteredMenu();

    listMenu = tmpList
        .where((menu) => menu.menu.title.toLowerCase().contains(keyword))
        .toList();
    notifyListeners();
  }

  void removeItem(MenuFilter menu) {
    listSelected.remove(menu);
    listMenu = getFilteredMenu().isEmpty ? menuReceipList : getFilteredMenu();
    notifyListeners();
  }

  List<MenuReceip> getFilteredMenu() {
    List<MenuReceip> tmpList = [];
    for (var i = 0; i < listSelected.length; i++) {
      tmpList = [
        ...tmpList,
        ...menuReceipList.where((menuItem) {
          return menuItem.cateogry == listSelected.elementAt(i).name;
        }).toList()
      ];
    }
    return tmpList;
  }
}
