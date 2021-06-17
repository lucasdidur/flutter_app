import 'package:flutter/material.dart';

abstract class BaseModularStateful extends StatefulWidget {
  final String title;
  const BaseModularStateful({Key key, @required this.title}) : super(key: key);
}
