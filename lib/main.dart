import 'package:flutter/material.dart';
import 'package:designs_initials_flutter/screens/basics_designs.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute:'basics_design' ,
      routes: {
        'basics_design': (_)=> BasicDesignScreen(),
      },
    );
  }
}



