import 'package:flutter/material.dart';
import 'package:preferencias_user/src/shared/preferences_user.dart';
import 'package:preferencias_user/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {

  static final String routeName = 'home';
  final prefs = new UserPreferences();

  @override
  Widget build(BuildContext context) {

    prefs.ultimaPagina = HomePage.routeName;

    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuario'),
        backgroundColor: (prefs.colorSecundario) ? Colors.teal : Colors.blue
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Color secundario: ${ prefs.colorSecundario }'),
          Divider(),
          Text('Género: ${ prefs.genero }'),
          Divider(),
          Text('Nombre de usuario: ${ prefs.nombreUsuario }'),
          Divider(),

        ],
      ),
    );
  }

}