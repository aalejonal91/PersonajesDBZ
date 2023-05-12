import 'dart:math';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    const boxDecoration = BoxDecoration(
             gradient: LinearGradient(
                begin:Alignment.topCenter ,end: Alignment.bottomCenter,
                colors:[
                Color.fromARGB(255, 8 ,8 , 8),
                Color.fromARGB(255, 26,25, 8),                
                ]
               ) 
            );
    return Stack(
      children: [
        Container(decoration:boxDecoration),
  const _StacksWelcomePage()
      ],
    );
  }
}

class _StacksWelcomePage extends StatelessWidget {
  const _StacksWelcomePage();

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children:[
        //Esfera Superior
         Positioned (left  : -50 ,top: -50,child: TopBox   ()),
        //Goku 
         Positioned( left  :  40 ,top: 190,child: GokuStack()),
        //Esfera Inferior 
         Positioned( bottom:  10 ,         child: ButtomBox()),
      ],
    );
  }
}

class ButtomBox extends StatelessWidget {
  const ButtomBox({ super.key });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       Container(
          margin    :const EdgeInsetsDirectional.only(start:200 ) ,
          decoration:const BoxDecoration(
            shape:  BoxShape.circle ),
          child     : const CircleAvatar(
            backgroundImage: AssetImage('assets/esfera_3_estrellas.png'),
            radius: 150
            ),   
        ),
      ],
    );
  }
}

class GokuStack extends StatelessWidget {
  const GokuStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: 
         [
          Transform.rotate(
            angle: pi/3,
            child: Center(
              child: Container(
                alignment: Alignment.center,
                height   : 550 ,
                width    : 450 ,
                child    : const Image(image: AssetImage('assets/hola_goku.png'),                       
               ),
             ),
            ),
          ),
       ],
    );
  }
}
//
class TopBox extends StatelessWidget {
  const TopBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi/4,
      child: Container(
        decoration:const BoxDecoration(
          color:Colors.amber,
          shape: BoxShape.circle),
        child: const CircleAvatar(
          backgroundImage: AssetImage('assets/esfera_3_estrellas.png'),
          radius         : 120),        
      ),
    );
  }
}

class BackgroundScroll extends StatelessWidget {
  const BackgroundScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      color    : const Color(0xff51c3dc) , 
      height   : double.infinity ,
      child    : const Image(image: AssetImage('assets/scroll_1.png')                
      ),
    );
  }
}

