import 'package:flutter/material.dart';

class PageTitleHome extends StatelessWidget {
  const PageTitleHome({super.key});

  @override
  Widget build(BuildContext context) {
return const Padding(
        padding: EdgeInsets.fromLTRB(40, 150, 20, 0),
        child: Stack(
        children: [
       Column(   
        crossAxisAlignment: CrossAxisAlignment.start,     
        children:[
          Text('PERSONAJES',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 40,color: Color.fromARGB(184, 155, 142, 86)),),
          Text('Elige tu favorito',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color: Color.fromARGB(186, 92, 80, 25))),
              ],
          )
        ]
     )
    );
  }
}

class PageTitleTeam extends StatelessWidget {
  const PageTitleTeam({super.key});

  @override
  Widget build(BuildContext context) {
return const Padding(
        padding: EdgeInsets.fromLTRB(40, 70, 20, 0),
        child: Stack(
        children: [
       Column(   
        crossAxisAlignment: CrossAxisAlignment.start,     
        children:[
          Text('ELIGE TEAM',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 50,color: Color.fromARGB(184, 155, 142, 86)),),
          Text('Elige tu favorito',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color: Color.fromARGB(186, 92, 80, 25))),
              ],
          )
        ]
     )
    );
  }
}