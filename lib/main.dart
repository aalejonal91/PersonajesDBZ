import 'package:designs_initials_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:designs_initials_flutter/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute:'splash_Page' ,
      routes: {
        'splash_Page'  : (_)=> SplashPage(),
        'welcome_Page' : (_)=> GokuWelcomePage(),
        'basics_design': (_)=> BasicDesignScreen(),
        'scroll_screen': (_)=> ScrollScreen(),
        'home_screen'  : (_)=> HomeScreen(),
        'rol_choose'   : (_)=> RolCharacter(),
        'goku_details' : (_)=> GokuPage(),
      },
    );
  } 
}



