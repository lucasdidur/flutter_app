import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:produtor_app/app/modules/home/home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: TextButton(
          child: Text("Ir para conter"),
          onPressed: () => Modular.to.pushNamed('/counter'),
        ),
      ),
    );
  }
}
