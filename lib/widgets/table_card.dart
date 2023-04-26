import 'package:flutter/material.dart';

class Card_Table extends StatelessWidget {
  const Card_Table({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      bottom: true,
      child: Table(
        children: [
           TableRow(
            children: [
              //To do:configuar Navigator
              GestureDetector(onTap:() {print('aca vamos bien');},child: _SingleCardCharacters(name: 'Goku',image: AssetImage('assets/goku.jpg'))),
              GestureDetector(onTap:() {},child: _SingleCardCharacters(name: 'Vegeta',image: AssetImage('assets/vegeta1.jpg'))),
            ]),
           TableRow(
            children: [
              _SingleCardCharacters(name: 'Goten',image: AssetImage('assets/goten.jpg')),
              _SingleCardCharacters(name: 'Trunks',image: AssetImage('assets/trunks_kid.jpg')),
            ]
          ),
           TableRow(
            children: [
              _SingleCardCharacters(name: 'Gohan',image: AssetImage('assets/gohan.jpg')),
              _SingleCardCharacters(name: 'Piccolo',image: AssetImage('assets/piccolo.jpg')),
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
            height: 140,
            width: 80,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(30),
              color:const Color.fromRGBO(69, 64, 41, 0.2),
            ),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Text(name,
                    style    : const TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color: Colors.white),
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





















