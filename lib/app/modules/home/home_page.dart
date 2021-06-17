import 'package:flutter/material.dart';
import 'package:produtor_app/app/core/base/base_state_modular.dart';
import 'package:produtor_app/app/core/base/base_stateful_modular.dart';
import 'package:produtor_app/app/modules/home/home_controller.dart';
import 'package:produtor_app/app/core/utils/string_util.dart';
import 'package:stack_trace/stack_trace.dart' as stacktrace;

class HomePage extends BaseModularStateful {
  const HomePage({Key key}) : super(key: key, title: "Home2");

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends BaseModularState<HomePage, HomeController> {
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
