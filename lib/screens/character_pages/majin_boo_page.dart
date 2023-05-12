import 'package:flutter/material.dart';
import 'package:designs_initials_flutter/widgets/widgets.dart';

class MajinBooPage extends StatelessWidget {
  const MajinBooPage({super.key});

  @override
  Widget build(BuildContext context) {
    
   return Scaffold(          
           body:Stack(
            children: [
              const Boxtop_characters(),
              PageView(
               children: [
                PagesTransform(
                  image: const AssetImage('assets/majin-boo.png'),
                  textTitleDescription:Text('MAJIN-BOO',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(SAGA-MBOO)',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow: const RowInit(),
                ),
                PagesTransform(
                  image: const AssetImage('assets/majin-boo3.png'),
                  textTitleDescription:Text('MAJIN-BOO',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(SAGA-MBOO)',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow:const RowTranforms() ,
                ),
                PagesTransform(
                  image: const AssetImage('assets/majin-boo4.png'),
                  textTitleDescription:Text('MAJIN-BOO',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(SAGA M-BU)',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow:const RowTranforms()
                ),
                PagesTransform(
                  image:const  AssetImage('assets/majin-boo5.png'),
                  textTitleDescription:Text('MAJIN-BOO',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(SAGA M-BU)',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow:const RowEnd()
              ),                              
            ]
          )
        ],
      ) 
    );
  }
}




