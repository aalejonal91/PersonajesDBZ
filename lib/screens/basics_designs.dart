
import 'package:flutter/material.dart';
import 'package:designs_initials_flutter/widgets/widgets.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Column(       
        children:[ 
          Image(image: AssetImage('assets/guerreros_z.jpg')),
          TitlePage(),
          SizedBox(height: 5,),
          ButtonIconSection(),
          FastLoremIpsumContainer(),         
      ] 
    ),
   );
  }
}




