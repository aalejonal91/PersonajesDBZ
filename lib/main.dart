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
      initialRoute:'home_screen' ,
      routes: {
        'basics_design': (_)=> BasicDesignScreen(),
        'scroll_screen': (_)=> ScrollScreen(),
        'home_screen': (_)=> HomeScreen(),
      },
    );
  } 
}



