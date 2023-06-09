import 'package:flutter/material.dart';
import 'package:designs_initials_flutter/widgets/widgets.dart';

class GokuPage extends StatelessWidget {
  const GokuPage({super.key});


  @override
  Widget build(BuildContext context) {
    
   return Scaffold(          
           body:Stack(
            children: [
              const Boxtop_characters(),
              PageView(
               children: [
                PagesTransform(
                  image: const AssetImage('assets/goku_sf_notr.png'),
                  textTitleDescription:Text('GOKU',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(KAKAROTO)',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow: const RowInit(),
                ),
                PagesTransform(
                  image: const AssetImage('assets/goku_ssy2-sf.png'),
                  textTitleDescription:Text('SSY2',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(SAGA FREEZER)',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow:const RowTranforms() ,
                ),
                PagesTransform(
                  image:const  AssetImage('assets/ssy3_sf.png'),
                  textTitleDescription:Text('SSY3',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(SAGA M-BU)',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow:const RowTranforms()                                 
                ),
                PagesTransform(
                  image: const AssetImage('assets/goku_rojo_sf.png'),
                  textTitleDescription:Text('SSGOD-RED',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(SAGA SUPER)',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow:const RowTranforms()
                ),
                PagesTransform(
                  image:const  AssetImage('assets/goku_blue_sf.png'),
                  textTitleDescription:Text('SSGOD-BLUE',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(SAGA SUPER)',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow:const RowTranforms()
                  ),
                PagesTransform(
                  image: const AssetImage('assets/goku_ui_sf.png'),
                  textTitleDescription:Text('SSG-ULTRA INSTINTO',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35 )),
                  textSubTitleDescription:Text('(SAGA SUPER)',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow:const RowEnd()
              ),              
            ]
          )
        ],
      ) 
    );
  }
}




