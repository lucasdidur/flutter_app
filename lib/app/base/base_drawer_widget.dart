import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:produtor_app/app/constants/menus.dart';
import 'package:produtor_app/app/models/menu_category.dart';
import 'package:produtor_app/app/models/menu_icon.dart';
import 'package:produtor_app/app/models/menu_item.dart';
import 'package:produtor_app/app/utils/string_util.dart';
import 'package:produtor_app/app/widgets/text.dart';

class BaseDrawer extends StatelessWidget {
  const BaseDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(Platform.script.path);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ...getCategories().map((e) => _buildCategoria(e)),
        ],
      ),
    );
  }

  Widget _buildCategoria(MenuCategory category) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black54, width: 0.3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, top: 15, bottom: 15),
            child: Texto(
              category.name,
              fontSize: 10,
              // color: Theme.of(context).primaryColor,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: findMenuByCategory(category.id).map((e) => _buildItem(e)).toList(),
          )
        ],
      ),
    );
  }

  Widget _buildItem(MenuItem menu) {
    return InkWell(
      onTap: () => Modular.to.navigate(menu.rota),
      child: Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 25, right: 15),
              child: _getIcon(menu.icone),
            ),
            Texto(
              menu.titulo,
              fontSize: 14,
            ),
          ],
        ),
      ),
    );
  }

  Widget _getIcon(MenuIcon menuIcon) {
    if (menuIcon.icon != null) {
      return menuIcon.icon;
    }

    if (isNotNullOrEmpty(menuIcon?.iconAsset)) {
      return SvgPicture.asset(
        "assets/icons/" + menuIcon.iconAsset,
        // color: Theme.of(context).disabledColor,
        width: 20,
      );
    }

    return Icon(
      menuIcon.iconData,
      // color: Theme.of(context).disabledColor,
      size: 20,
    );
  }
}
