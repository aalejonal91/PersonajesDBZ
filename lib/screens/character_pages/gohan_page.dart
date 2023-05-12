import 'package:flutter/material.dart';
import 'package:designs_initials_flutter/widgets/widgets.dart';

class GohanPage extends StatelessWidget {
  const GohanPage({super.key});


  @override
  Widget build(BuildContext context) {
    
   return Scaffold(          
           body:Stack(
            children: [
              const Boxtop_characters(),
              PageView(
               children: [
                PagesTransform(
                  image: const AssetImage('assets/gohan_kid__1_sf.png'),
                  textTitleDescription:Text('GOHAN',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(HIJO DE GOKU)',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow: const RowInit(),
                ),
                PagesTransform(
                  image: const AssetImage('assets/gohan_young-sf.png'),
                  textTitleDescription:Text('GOHAN',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(SAGA FREZZER)',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow:const RowTranforms() ,
                ),
                PagesTransform(
                  image:const  AssetImage('assets/gohan_ssy-sf.png'),
                  textTitleDescription:Text('GOHAN',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(SAGA CELL)',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow:const RowTranforms()                                 
                ),
                PagesTransform(
                  image: const AssetImage('assets/gohan_saiyaman-sf.png'),
                  textTitleDescription:Text('GOHAN',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(SAGA M-BUU)',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow:const RowTranforms()
                ),
                PagesTransform(
                  image:const  AssetImage('assets/gohan_ssy_adulto-sf.png'),
                  textTitleDescription:Text('GOHAN',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(SAGA M-BUU)',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow:const RowEnd()
                  ),                             
            ]
          )
        ],
      ) 
    );
  }
}




