import 'package:flutter/material.dart';
import 'package:designs_initials_flutter/widgets/widgets.dart';

class DaburaPage extends StatelessWidget {
  const DaburaPage({super.key});

  @override
  Widget build(BuildContext context) {
    
   return Scaffold(          
           body:Stack(
            children: [
       const  Boxtop_characters(),
              PageView(
               children: [
                PagesTransform(
                  image: const AssetImage('assets/dabura_2.png'),
                  textTitleDescription:Text('DABURA',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(SAGA M-BOO )',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow: const RowInit(),
                ),
                PagesTransform(
                  image: const AssetImage('assets/dabura.png'),
                  textTitleDescription:Text('DABURA',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(SAGA M-BOO )',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow:const RowEnd() ,
              ),                             
            ]
          )
        ],
      ) 
    );
  }
}

