import 'package:flutter/material.dart';

//*CAMBIAR EL THEME DE FORMA DINÁMICA, ya que el las preferencias de usuario
//*no son un gestor de estado, lo cual impide que podamos cambiar en el momento, sin
//*reiniciar la aplicación, las preferencias de usuario se utilizan para grabar
//*informacion en el dispositivo, como hacemos en preferencias.dart
//*Este gestor de estado (provider) nos permite hacer el cambio de
//* theme instantaneamente y lo mantiene en el dispositivo,
//* osea que no se pierde si reiniciamos la app o hacemos hot reload

class ThemeProvider extends ChangeNotifier {
  ThemeData currentTheme;
  ThemeProvider({required bool isDarkmode})
      : currentTheme = isDarkmode ? ThemeData.dark() : ThemeData.light();

  setLightMode() {
    currentTheme = ThemeData.light();
    notifyListeners();
  }

  setDarkMode() {
    currentTheme = ThemeData.dark();
    notifyListeners();
  }
}
