import 'package:flutter/material.dart';
import 'package:preferencias_usuario/screens/screens.dart';
import 'package:preferencias_usuario/share_preferences.dart/preferencias.dart';



//* Esta aplicacion va a ser una forma de mantener informacion persistente en nuestro dispositivo sin usar base de datos, la cantidad de informacion debe 
//*ser la menor posible ya que la potencia de almacenamiento es mucho menor


//*el main puede ser async, el build no
void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Preferences.init;
  
  runApp(const MyApp());
  
  }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: HomeScreen.routeName, 
      routes:{ 
        HomeScreen.routeName:(_)=> const HomeScreen(),
        SettingsScreen.routeName:(_)=> const SettingsScreen(),
        },
        theme: ThemeData.light(),
    );
  }
}