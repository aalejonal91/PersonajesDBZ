import 'package:designs_initials_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';


class RolCharacter extends StatelessWidget {
  const RolCharacter({super.key});
  @override
  Widget build(BuildContext context) {
    const boxDecoration = BoxDecoration(
             gradient: LinearGradient(
                begin:Alignment.topCenter ,end: Alignment.bottomCenter,stops: [0.18,0.5],
                colors:[
                Color.fromARGB(255, 0, 0, 0),
                Color.fromARGB(255, 26,25, 8),                
                ]
               ) 
            );
    return Scaffold(
      body: 
      Stack(
        children: [
        Container(child: const  _Boxtop  ()),
        const  _Boxtop  (),          
        const  PageTitleTeam(),
        const  _BodyTeams(),
          ]             
       )
    );                      
  }
}



class _BodyTeams extends StatelessWidget {
  const _BodyTeams({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 190),
      child: SafeArea(
        child: AnimatedContainer(
          duration:Duration(seconds:8),
          curve:Curves.easeInOutQuint ,
          margin: EdgeInsets.only(top: 5) ,
          child: SingleChildScrollView(
            child: Column(               
              children:const [
                // PageTitle(),
                //SizedBox(height: 35),
                Card_Table_rol(),
                SizedBox(height: 55),
              ]
            ),
          ),
        ),
      ),
    );
  }
}


class _Boxtop extends StatelessWidget {
  const _Boxtop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height:double.infinity,
      child: const Image( image: AssetImage('assets/templo_kaio.jpg'),fit: BoxFit.cover,),                    
    );
  }
}

class Card_Table_rol extends StatelessWidget {
  const Card_Table_rol ({super.key});

   @override
  Widget build(BuildContext context) {
    return  SafeArea(
      bottom: true,
      child: Table(
        children: [
           TableRow(
            children: [
              //To do:configuar Navigator
              GestureDetector(
                onTap:() {print('aca vamos bien');},
                child: _SingleCardsTeams_Left(name: 'Goku',image: AssetImage('assets/goku.jpg'))),
              GestureDetector(
                onTap:() {print('aca tambien vamos bien');},
                child: _SingleCardsTeams_Right(name: 'Vegeta',image: AssetImage('assets/vegeta1.jpg'))),
            ]
          ),
        ],
      ),
    );
  }
}


class  _SingleCardsTeams_Left extends StatelessWidget {
  const  _SingleCardsTeams_Left({ super.key, required this.name, required this.image });

  final String name;
  final AssetImage image ;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5,right: 5),
          child: RotatedBox(
              quarterTurns: 1,
              child: Text(name,
                style    : const TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color: Colors.white),
                textDirection: TextDirection.rtl, textAlign: TextAlign.center),
              ),
        ),
        Container(             
          margin: const EdgeInsets.symmetric(vertical: 10) ,
          height: 400,
          width: 120,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(30),
            color:const Color.fromRGBO(69, 64, 41, 0.2),
            ),
          //child: image,  
          ),                
        ],
      );          
    }
}

class  _SingleCardsTeams_Right extends StatelessWidget {
  const  _SingleCardsTeams_Right({ super.key, required this.name, required this.image });

  final String name;
  final AssetImage image ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(             
          margin: const EdgeInsets.symmetric(vertical: 7) ,
          height: 400,
          width: 120,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(30),
            color:const Color.fromRGBO(69, 64, 41, 0.2),
            )
          ),
        Padding(
          padding: const EdgeInsets.only(left: 5,right: 10),
          child: RotatedBox(
            quarterTurns: 1,
            child: Text(name,
                    style    : const TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color: Colors.white),
                    textDirection: TextDirection.rtl, textAlign: TextAlign.center),
                  ),
        ),                
        ],
      );          
    }
}
