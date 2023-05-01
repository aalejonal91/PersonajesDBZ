import 'package:designs_initials_flutter/screens/screens.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
  @override
  _SplashPageState createState() => _SplashPageState();
}
class _SplashPageState extends State<SplashPage> {
  bool op=true;
  void initState(){
    pasarPage();
    animatedopacity() ;
    
    super.initState();
  } 
  Future<void> pasarPage() async{
    Future.delayed(const Duration(milliseconds: 15200), () async{     
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const RolCharacter()));
    });
  } 

   Future<void> animatedopacity() async{
    Future.delayed(const Duration(milliseconds: 100), () async{
      setState(() {op= !op;  });
    });
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        
            children:[ 
              Container(
               margin: EdgeInsets.only(top:50), 
               child: Image.asset("assets/dragon-balls.gif",height: double.maxFinite,),
               color: Colors.black,),
               AnimatedOpacity(
                opacity: op ? 0 : 1, duration:  Duration(seconds: 10),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(top:290),
                    child: Image.asset("assets/letras (2).png",),
                  ))
                )
              //Image.asset("assets/dragon-balls-dragon.gif",height: double.infinity,),
                //const SizedBox(height: 20,),
              //Center(child: Text('Bienvenidos', style:TextStyle (color:Color(0xffc56c3b),fontSize:22 )))
           
            ],
          ),
    );
  }
}