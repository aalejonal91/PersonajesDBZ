import 'package:designs_initials_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';


class HomeScreenVillanos extends StatelessWidget {
  const HomeScreenVillanos({super.key});
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
  const _HomeBody({super.key});

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
                SizedBox(height: 35),
                Card_Table_Villanos(),
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
      height:150,
      child: const Image( image: AssetImage('assets/shenglong_sin_fondo.png'),fit: BoxFit.cover,),                    
    );
  }
}