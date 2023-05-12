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
        'basics_design'         : (_)=> const BasicDesignScreen()  ,
        'scroll_screen'         : (_)=> const ScrollScreen()       ,
        'home_screen'           : (_)=> const HomeScreenHeroes()   ,
        'home_screen_villanos'  : (_)=> const HomeScreenVillanos() ,
        'rol_choose'            : (_)=> const RolCharacter()       ,
        'goku_details'          : (_)=> const GokuPage()           ,
        'GokuPage'              : (_)=> const GokuPage()           ,
        'splash_Page'           : (_)=> const SplashPage()         ,        
        'VegetaPage'            : (_)=> const VegetaPage()         ,
        'GotenPage'             : (_)=> const GotenPage()          ,
        'TrunksPage'            : (_)=> const TrunksPage()         ,
        'GohanPage'             : (_)=> const GohanPage()          ,
        'PiccoloPage'           : (_)=> const PiccoloPage()        ,
        'FreezerPage'           : (_)=> const FreezerPage()        ,
        'MajinBooPage'          : (_)=> const MajinBooPage()       ,
        'BabidiPage'            : (_)=> const BabidiPage()         ,
        'DaburaPage'            : (_)=> const DaburaPage()         ,
        'BrolyPage'             : (_)=> const BrolyPage()          , 
        'CellPage'              : (_)=> const CellPage()           ,    
      },
    );
  } 
}



