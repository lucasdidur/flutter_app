import 'package:flutter/material.dart';
import 'package:produtor_app/app/models/menu_category.dart';
import 'package:produtor_app/app/models/menu_icon.dart';
import 'package:produtor_app/app/models/menu_item.dart';

List<MenuCategory> getCategories() {
  return [
    MenuCategory(
      id: '1',
      name: 'Dashboard',
    )
  ];
}

List<MenuItem> getMenus() {
  return [
    MenuItem(
      titulo: "Counter",
      rota: '/counter',
      categoria: findCategoryById('1'),
      icone: MenuIcon(
        iconData: Icons.plus_one,
      ),
    ),
  ];
}

MenuCategory findCategoryById(String id) {
  return getCategories().firstWhere((element) => element.id == id, orElse: () => null);
}

Iterable<MenuItem> findMenuByCategory(String idCategory) {
  return getMenus().where((element) => element.categoria.id == idCategory);
}
