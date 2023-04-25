import 'package:flutter/material.dart';

class Card_Table extends StatelessWidget {
  const Card_Table({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Table(
        children:const [
           TableRow(
            children: [
              _SingleCardCharacters(name: 'Goku',image: AssetImage('assets/goku_sf_notr.png')),
              _SingleCardCharacters(name: 'Goku',image: AssetImage('assets/goku_sf_notr.png')),
            ]),
           TableRow(
            children: [
              _SingleCardCharacters(name: 'Goku',image: AssetImage('assets/goku_sf_notr.png')),
              _SingleCardCharacters(name: 'Goku',image: AssetImage('assets/goku_sf_notr.png')),
            ]
          ),
           TableRow(
            children: [
              _SingleCardCharacters(name: 'Goku',image: AssetImage('assets/goku_sf_notr.png')),
              _SingleCardCharacters(name: 'Goku',image: AssetImage('assets/goku_sf_notr.png')),
            ]
          ),
        ],
      ),
    );
  }
}

class _SingleCardCharacters extends StatelessWidget {
  const _SingleCardCharacters({ super.key, required this.name, required this.image });

  final String name;
  final AssetImage image ;

  @override
  Widget build(BuildContext context) {
    return Container( 
                margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 10) ,
                height: 120,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(10),
                  color:const Color.fromRGBO(69, 64, 41, 0.2),
                ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Text(name,
                        style    : const TextStyle(fontWeight:FontWeight.bold,fontSize: 10,color: Colors.white),
                        textAlign:TextAlign.center),
                  CircleAvatar(
                    backgroundImage: image, //AssetImage('assets/goku_sf_notr.png'),
                    radius: 40,
                    backgroundColor:Colors.transparent),
                  ],
                ),
                
   );
          
  }
}





















