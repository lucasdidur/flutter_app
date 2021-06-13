import 'package:produtor_app/app/models/menu_category.dart';

import 'menu_icon.dart';

class MenuItem {
  final String id;
  final String titulo;
  final String rota;
  final MenuIcon icone;
  final MenuCategory categoria;

  MenuItem({
    this.id,
    this.titulo,
    this.rota,
    this.icone,
    this.categoria,
  });
}
