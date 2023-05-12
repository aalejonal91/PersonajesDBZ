import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class Card_Table extends StatelessWidget {
  const Card_Table({super.key});

   @override
  Widget build(BuildContext context) {
    return  SafeArea(
      bottom: false,
      child: FadeInDown(
        duration: const Duration(milliseconds: 1200),
        child: Table(
          children:const [
             TableRow(
              children: [
                //To do:configuar Navigator
                _SingleCardCharacters(name: 'Goku',image: AssetImage('assets/goku.jpg'),routePage:'GokuPage'),
                _SingleCardCharacters(name: 'Vegeta',image: AssetImage('assets/vegeta1.jpg'),routePage:'VegetaPage'),
                ]
              ),
             TableRow(
              children: [
                _SingleCardCharacters(name: 'Goten',image: AssetImage('assets/goten.jpg'),routePage:'GotenPage'),
                _SingleCardCharacters(name: 'Trunks',image: AssetImage('assets/trunks_kid.jpg'),routePage:'TrunksPage'),
              ]
            ),
             TableRow(
              children: [
                _SingleCardCharacters(name: 'Gohan',image: AssetImage('assets/gohan.jpg'),routePage:'GohanPage'),
                _SingleCardCharacters(name: 'Piccolo',image: AssetImage('assets/piccolo.jpg'),routePage:'PiccoloPage'),
              ]
            ),
               ],
        ),
      ),
    );
  }
}

class  _SingleCardCharacters extends StatelessWidget {
  const  _SingleCardCharacters({ required this.name, required this.image, required this.routePage });

  final String name;
  final AssetImage image ;
  final String routePage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {Navigator.pushNamed(context, routePage);},
      child: Container( 
              margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 10) ,
              height: 170,
              width: 80,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(30),
                color:const Color.fromRGBO(69, 64, 41, 0.2),
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Text(name,
                      style     : const TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color: Color.fromARGB(184, 155, 142, 86)),
                      textAlign :TextAlign.center),
                CircleAvatar(
                  backgroundImage: image, //AssetImage('assets/goku_sf_notr.png'),
                  radius: 40,
                  backgroundColor:Colors.transparent),
                ],
              ),                
        ),
    );          
    }
}

class Card_Table_Villanos extends StatelessWidget {
  const Card_Table_Villanos({super.key});

   @override
  Widget build(BuildContext context) {
    return  SafeArea(
      bottom: false,
      child: FadeInDown(
        duration: const Duration(milliseconds: 1200),
        child: Table(
          children:const [
             TableRow(
              children: [
                //To do:configuar Navigator
                _SingleCardCharactersVillanos(name: 'Freezer',image: AssetImage('assets/frezzer_avatar.jpg'),routePage:'FreezerPage'),
                _SingleCardCharactersVillanos(name: 'Cell',image: AssetImage('assets/cell_avatar.jpg'),routePage:'CellPage'),
              ]),
             TableRow(
              children: [
                _SingleCardCharactersVillanos(name: 'Majin-boo',image: AssetImage('assets/buu_avatar.jpg'),routePage:'MajinBooPage'),
                _SingleCardCharactersVillanos(name:  'Babidi',image: AssetImage('assets/babidee.jpg'),routePage:'BabidiPage'),
              ]
            ),
             TableRow(
              children: [
                _SingleCardCharactersVillanos(name: 'Dabura',image: AssetImage('assets/daburajpg.jpg',),routePage:'DaburaPage'),
                _SingleCardCharactersVillanos(name: 'Broly',image: AssetImage('assets/broly_avatar.jpg'),routePage:'BrolyPage'),
              ]
            ),
          ],
        ),
      ),
    );
  }
}

class  _SingleCardCharactersVillanos extends StatelessWidget {
  const  _SingleCardCharactersVillanos({ required this.name, required this.image, required this.routePage });

  final String name;
  final AssetImage image ;
  final String routePage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {Navigator.pushNamed(context, routePage);},
      child: Container( 
              margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 10) ,
              height: 170,
              width: 80,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(30),
                color:const Color.fromRGBO(69, 64, 41, 0.2),
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Text(name,
                      style     : const TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color: Color.fromARGB(184, 155, 142, 86)),
                      textAlign :TextAlign.center),
                CircleAvatar(
                  backgroundImage: image, //AssetImage('assets/goku_sf_notr.png'),
                  radius: 40,
                  backgroundColor:Colors.transparent),
                ],
              ),                
        ),
    );          
    }
}




















