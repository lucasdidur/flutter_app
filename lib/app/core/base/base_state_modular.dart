import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'base_drawer_widget.dart';
import 'base_stateful_modular.dart';
import 'base_store.dart';

abstract class BaseModularState<TWidget extends BaseModularStateful, TBind extends Object>
    extends ModularState<TWidget, TBind> {
  var baseStore = Modular.get<BaseStore>();

  bool showBottomNaviationBar = true;

  bool showAppBar = true;

  Widget appBarTitleWidget;

  bool automaticallyImplyLeading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      bottomNavigationBar: buildBottomNaviationBar(),
      floatingActionButton: buildFloatingActionButton(),
      drawer: BaseDrawer(),
      body: builder(context),
    );
  }

  Widget buildAppBar() {
    if (!showAppBar) {
      return null;
    }

    return AppBar(
      // elevation: appBarElevation,
      title: appBarTitleWidget == null
          ? Text(
              widget.title,
              overflow: TextOverflow.fade,
              style: TextStyle(fontSize: 16),
              // textAlign: appBarTitleAlign,
            )
          : appBarTitleWidget,
      // actions: appBarActions,
      // bottom: appBarBottom,
      automaticallyImplyLeading: automaticallyImplyLeading,
      leading: !automaticallyImplyLeading
          ? new IconButton(
              icon: new Icon(Icons.arrow_back),
              onPressed: () {
                if (Navigator.of(context).canPop()) {
                  Navigator.of(context).pop();
                } else {
                  Modular.to.navigate('/');
                }
              })
          : null,
    );
  }

  Widget buildFloatingActionButton() {
    return null;
  }

  Widget buildBottomNaviationBar() {
    if (!showBottomNaviationBar) {
      return null;
    }

    return Observer(builder: (context) {
      return BottomNavigationBar(
        onTap: (id) {
          if (id == 0) {
            Modular.to.navigate('/');
            baseStore.currentIndex = 0;
          } else if (id == 1) {
            Modular.to.navigate('/counter');
            baseStore.currentIndex = 1;
          } else if (id == 2) {
            Scaffold.of(context).openDrawer();
          }
        },
        currentIndex: baseStore.currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Counter',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          )
        ],
      );
    });
  }

  Widget builder(BuildContext context);
}
