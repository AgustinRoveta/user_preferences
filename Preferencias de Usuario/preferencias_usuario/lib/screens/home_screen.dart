import 'package:flutter/material.dart';
import 'package:preferencias_usuario/share_preferences.dart/preferencias.dart';
import 'package:preferencias_usuario/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'Home';

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Home Screen')),
        drawer: const SideMenu(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('isDarkmode: ${Preferences.isDarkMode}'),
            const Divider(),
            Text('Género:${Preferences.gender}'),
            const Divider(),
            Text('Nombre de Usuario: ${Preferences.name}'),
            const Divider(),
          ],
        ));
  }
}
