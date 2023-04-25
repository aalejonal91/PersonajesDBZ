import 'package:designs_initials_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';


class GokuWelcomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children:const [
          //Gradient Background(black-yellow)
          Background(),          
        ],
      ),
   );
  }
}