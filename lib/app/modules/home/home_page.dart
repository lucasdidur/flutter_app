import 'dart:io';

import 'package:flutter/material.dart';
import 'package:produtor_app/app/base/base_state_modular.dart';
import 'package:produtor_app/app/base/base_stateful_modular.dart';
import 'package:produtor_app/app/modules/home/home_store.dart';
import 'package:produtor_app/app/utils/string_util.dart';
import 'package:path/path.dart';
import 'package:stack_trace/stack_trace.dart' as stacktrace;

class HomePage extends BaseModularStateful {
  const HomePage({Key key}) : super(key: key, title: "Home2");

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends BaseModularState<HomePage, HomeStore> {
  @override
  bool get showBottomNaviationBar => true;

  @override
  bool get showAppBar => false;

  @override
  Widget builder(BuildContext context) {
    print(getCurrentFile(stacktrace.Frame.caller(0)));
    return Container();
  }
}
