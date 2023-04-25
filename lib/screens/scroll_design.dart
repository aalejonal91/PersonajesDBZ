import 'package:designs_initials_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';


class ScrollScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    const boxDecoration =  BoxDecoration(
               gradient: LinearGradient(
                  begin:Alignment.topCenter ,end: Alignment.bottomCenter,stops: [0.5,0.5],
                  colors:[
                  Color(0xff79eccb),
                  Color(0xff51c3dc)
                  ]
                 ) 
              );
    return Scaffold(
      backgroundColor:const Color(0xff51c3dc) ,
      body: Container(
              decoration:  boxDecoration,
              child: PageView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                children:const [
                  PageHome(),
                  Page2(),
          ],
        ),
      )
   );
  }
}

class PageHome extends StatelessWidget {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      //mainAxisAlignment: MainAxisAlignment.center,
      children:const [  
        //Background Image        
         BackgroundScroll(),
        //MainContent
        MainContent(),       
      ]
     );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:const Color(0xff51c3dc),
      child:  Center( 
        child: TextButton(
          onPressed: (){}, 
          
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: const StadiumBorder()),
              child: const Padding(
                padding:  EdgeInsets.all(10),
                child:  Text(
                  'Hola soy goku\nBienvenido',
                  style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color: Colors.white),
                  textAlign:TextAlign.center ),
              ),
          )
       ),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({super.key });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height:60),
          const Text('11°', style: TextStyle(fontWeight:FontWeight.bold,fontSize: 40,color: Colors.white)),
          const Text('MIERCOLES',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 40,color: Colors.white)),
          Expanded(child: Container()),
          const Icon(Icons.keyboard_arrow_down_outlined,color: Colors.white,size:100)    
        ],
      ),
    );
  }
}



  