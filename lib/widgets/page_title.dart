import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({super.key});

  @override
  Widget build(BuildContext context) {
return Padding(
        padding: const EdgeInsets.fromLTRB(50, 160, 20, 0),
        child: Stack(
        children: [
       Column(   
        crossAxisAlignment: CrossAxisAlignment.start,     
        children:const  [
          Text('PERSONAJES',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 40,color: Colors.white),),
          Text('Elige tu favorito',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 10,color: Color.fromARGB(156, 173, 173, 173))),
              ],
          )
        ]
     )
    );
  }
}