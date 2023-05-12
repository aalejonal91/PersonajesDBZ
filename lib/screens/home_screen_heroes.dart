import 'package:designs_initials_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';


class HomeScreenHeroes extends StatelessWidget {
  const HomeScreenHeroes({super.key});
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
      body: Stack(
        children: [
           Container(decoration:boxDecoration),
        const  _Boxtop  (),          
        const  PageTitleHome(),
        const  _HomeBody(), 
          ]             
       )
    );                      
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 190),
      child: SafeArea(
        child: AnimatedContainer(
          duration:const Duration(seconds:8),
          curve:Curves.easeInOutQuint ,
          margin: const EdgeInsets.only(top: 5) ,
          child: const SingleChildScrollView(
            child: Column(               
              children:[
                // PageTitle(),
                SizedBox(height: 35),
                Card_Table(),
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
  const _Boxtop();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height:150,
      child: Image( image: AssetImage('assets/shenglong_sin_fondo.png'),fit: BoxFit.cover,),                    
    );
  }
}
