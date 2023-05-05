import 'package:designs_initials_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';


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
                onTap:() {Navigator.pushNamed(context, 'home_screen');},
                child: FadeInLeft(
                  duration: Duration(seconds: 2),
                  child: const _SingleCardsTeams_Left(name: 'HEROES',))),
              GestureDetector(
                onTap:() {Navigator.pushNamed(context, 'home_screen_villanos');},
                child: FadeInRight(
                  duration: Duration(seconds: 2),
                  child: const _SingleCardsTeams_Right(name: 'VILLANOS',))),
            ]
          ),
        ],
      ),
    );
  }
}


class  _SingleCardsTeams_Left extends StatelessWidget {
  const  _SingleCardsTeams_Left({ super.key, required this.name, this.image });

  final String name;
  final Image? image ;

  @override
  Widget build(BuildContext context) {
  
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 1,right: 5),
          child: RotatedBox(
              quarterTurns: 1,
              child: Text(name,
                style    : const TextStyle(fontWeight:FontWeight.bold,fontSize: 29,color: Color.fromARGB(184, 68, 62, 38)),
                textDirection: TextDirection.rtl, textAlign: TextAlign.center),
              ),
        ),
        Container(             
          margin: const EdgeInsets.symmetric(vertical: 10) ,
          height: 450,
          width: 130,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(30),
            color:const Color.fromRGBO(69, 64, 41, 0.2),
            ),
           child: ClipRRect(
            borderRadius:BorderRadius.circular(30),
            child: Image.asset('assets/heroes.jpg',fit: BoxFit.fill,color: Colors.white.withOpacity(0.75),colorBlendMode: BlendMode.modulate,))  
          ),                
        ],
      );          
    }
}


class  _SingleCardsTeams_Right extends StatelessWidget {
  const  _SingleCardsTeams_Right({ super.key, required this.name, this.image });

  final String name;
  final Image? image ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(             
          margin: const EdgeInsets.symmetric(vertical: 7) ,
          height: 450,
          width: 130,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(30),
            color:const Color.fromRGBO(69, 64, 41, 0.2),
            ),
          child: ClipRRect(
            borderRadius:BorderRadius.circular(30),
            child: Image.asset('assets/villanos_prueba.png',fit: BoxFit.fill,color: Colors.white.withOpacity(0.8),colorBlendMode: BlendMode.modulate,))  
          ),
        Padding(
          padding: const EdgeInsets.only(left:5 ,right: 8),
          child: RotatedBox(
            quarterTurns: 1,
            child: Text(
              name,
              style    : const TextStyle(fontWeight:FontWeight.bold,fontSize: 29,color: Color.fromARGB(184, 68, 62, 38)),
              textDirection: TextDirection.rtl, textAlign: TextAlign.center),
            ),
          ),                
      ],
    );          
  }
}
/* ClipRRect(
            borderRadius:BorderRadius.circular(30), 
            child: Image.network('https://i.pinimg.com/736x/9f/17/53/9f1753b546110984392d7e8b3b11b1d3.jpg',fit: BoxFit.fill)
            ), */