import 'package:flutter/material.dart';
import 'package:designs_initials_flutter/widgets/widgets.dart';
import 'package:animate_do/animate_do.dart';

class GokuPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
   return Scaffold(          
           body:Stack(
            children: [
              Boxtop_characters(),
              PageView(
               children: [
                PagesTransform(
                  image: AssetImage('assets/goku_sf_notr.png'),
                  textTitleDescription:Text('GOKU',style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(KAKAROTO)',style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow: RowInit(),
                ),
                PagesTransform(
                  image: AssetImage('assets/goku_ssy2-sf.png'),
                  textTitleDescription:Text('SSY2',style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(SAGA FREEZER)',style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow:RowTranforms() ,
                ),
                PagesTransform(
                  image: AssetImage('assets/ssy3_sf.png'),
                  textTitleDescription:Text('SSY3',style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(SAGA M-BU)',style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow:RowTranforms()                                 
                ),
                PagesTransform(
                  image: AssetImage('assets/goku_rojo_sf.png'),
                  textTitleDescription:Text('SSGOD-RED',style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(SAGA SUPER)',style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow:RowTranforms()
                ),
                PagesTransform(
                  image: AssetImage('assets/goku_blue_sf.png'),
                  textTitleDescription:Text('SSGOD-BLUE',style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(SAGA SUPER)',style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow:RowTranforms()
                  ),
                PagesTransform(
                  image: AssetImage('assets/goku_ui_sf.png'),
                  textTitleDescription:Text('SSG-ULTRA INSTINTO',style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35 )),
                  textSubTitleDescription:Text('(SAGA SUPER)',style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow:RowEnd()
              ),              
            ]
          )
        ],
      ) 
    );
  }
}

class PagesTransform extends StatelessWidget {
  const PagesTransform(
  {super.key,required this.image,required this.textTitleDescription,required this.textSubTitleDescription, required this.typerow }
  );

  final AssetImage image ;
  final Text textTitleDescription; 
  final Text textSubTitleDescription;
  final Widget typerow;

  @override
  Widget build(BuildContext context) {
    return DescriptionContainerTransforms(
      textTitleDescription: textTitleDescription, 
      textSubTitleDescription: textSubTitleDescription,
      typerow: typerow,
      image: image);
  }
}

class DescriptionContainerTransforms extends StatelessWidget {
  const DescriptionContainerTransforms(
    {super.key,required this.textTitleDescription,required this.textSubTitleDescription,required this.image, required this.typerow }
  );

  final Text textTitleDescription;
  final Text textSubTitleDescription;
  final AssetImage image;
  final Widget typerow;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 320),
            child: TweenAnimationBuilder(        
              tween: Tween(
                begin: 1.0,end: 0.0),
                duration: Duration(milliseconds: 2000),
                builder: (context, value, child) {
                  var titleDescription = textTitleDescription;
                  var subTitleDescription = textSubTitleDescription; 
                  var rowInit = typerow;
                  return Transform.translate(
                  offset: Offset(0.0,value*350), 
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height:550 ,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.6),//colorBlendMode: BlendMode.modulate,
                          borderRadius:const BorderRadius.vertical(
                            top: Radius.circular(40))
                   )
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 120,left: 8,bottom: 10),
                   child: Container(
                    //color: Colors.green,
                     child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        titleDescription,
                        subTitleDescription,
                        rowInit                            
                              ],
                            ),
                   ),
                        ),
                      ]
                    )
                  );
                },                  
              ),
            ),
          ZoomInImage(image: image)          
        ],
      ),
    );
  }
}

class RowInit extends StatelessWidget {
  const RowInit({super.key,});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [                          
        Container(
          width: 110,
          height: 140,
          child: Image.asset('assets/retroceso_rapido_sf.gif')
          ),
        SizedBox(width:40),  
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('DESLIZA',style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35 )),
            Text('( PARA VER TRANSFORMACION )',style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,fontSize: 10 )),
            
          ],
        )  
      ],
    );
  }
}

class RowTranforms extends StatelessWidget {
  const RowTranforms({super.key,});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [                          
          Container(
            width: 90,
            height: 120,
            //color: Colors.red,
            child: Image.asset('assets/retroceso_rapido_sf.gif',fit:BoxFit.cover)
            ),
          //SizedBox(width:40),  
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('DESLIZA',style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35 )),
              Text('( PARA VER TRANSFORMACION )',style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,fontSize: 10 )),            
            ],
          ),
          Container(
            width: 90,
            height: 120,
            //color: Colors.orange,
            child: Image.asset('assets/avance_rapido_sf.gif',fit:BoxFit.cover)
          ),  
        ],
      ),
    );
  }
}

class RowEnd extends StatelessWidget {
  const RowEnd({super.key,});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [ 
        Container(
          width: 110,
          height: 120,
          //color: Colors.orange,
          child: Image.asset('assets/avance_rapido_sf.gif',fit:BoxFit.cover)
          ),                         
        SizedBox(width:40),  
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('DESLIZA',style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30 )),
            Text('( PARA VER TRANSFORMACION )',style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,fontSize: 10 )),
          ],
        ),          
      ],
    );
  }
}

class ZoomInImage extends StatelessWidget {
  const ZoomInImage({ super.key,required this.image });

  final AssetImage image;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(horizontal: 95,vertical: 120),
      height: 350,
      width: 250,
      child: TweenAnimationBuilder(
        tween: Tween(
          begin: 1.0,end: 0.0),
          duration: Duration(milliseconds: 2000),
          builder: (context, value, child) {
            return ZoomIn (
              duration: Duration(milliseconds: 900),
              child: Image(image:image),
          );       
        },                  
      ),
    );
  }
}


class Boxtop_characters extends StatelessWidget {
  const Boxtop_characters({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height:double.infinity,
      child: const Image( image: AssetImage('assets/kamehouse.jpg'),fit: BoxFit.cover,),                    
    );
  }
}




