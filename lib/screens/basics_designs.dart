
import 'package:flutter/material.dart';
import 'package:designs_initials_flutter/widgets/widgets.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(       
        children: [ 
            Image(
            image: AssetImage('assets/goku_portada.png')
          ),
          TitlePage(),
          SizedBox(height: 20,),
          ButtonIconSection(),
          FastLoremIpsumContainer(),
          
      ] 
    ),
   );
  }
}




