import 'package:flutter/material.dart';
import 'package:designs_initials_flutter/widgets/widgets.dart';

class FreezerPage extends StatelessWidget {
  const FreezerPage({super.key});

  @override
  Widget build(BuildContext context) {
    
   return Scaffold(          
           body:Stack(
            children: [
              const Boxtop_characters(),
              PageView(
               children: [
                PagesTransform(
                  image: const AssetImage('assets/freezer-fase1-sf.png'),
                  textTitleDescription:Text('FREEZER-FASE1',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(DBZ)',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow: const RowInit(),
                ),
                PagesTransform(
                  image: const AssetImage('assets/freezer-fase2.png'),
                  textTitleDescription:Text('FREEZER-FASE2',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(DBZ)',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow:const RowTranforms() ,
                ),
                PagesTransform(
                  image:const  AssetImage('assets/freezer-fase3.png'),
                  textTitleDescription:Text('FREEZER-FASE3',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(DBZ)',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow:const RowTranforms()                                 
                ),
                PagesTransform(
                  image: const AssetImage('assets/freezer_perfecto-sf.png'),
                  textTitleDescription:Text('FREEZER-FINAL',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(DBZ)',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow:const RowTranforms()
                ),
                PagesTransform(
                  image: const AssetImage('assets/FREEZER-GOLDEN.png'),
                  textTitleDescription:Text('GOLDEN-FREEZER',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35 )),
                  textSubTitleDescription:Text('(DBSUPER)',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow:const RowEnd()
              ),              
            ]
          )
        ],
      ) 
    );
  }
}




