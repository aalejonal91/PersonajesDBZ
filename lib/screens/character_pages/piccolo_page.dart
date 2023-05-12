import 'package:flutter/material.dart';
import 'package:designs_initials_flutter/widgets/widgets.dart';

class PiccoloPage extends StatelessWidget {
  const PiccoloPage({super.key});


  @override
  Widget build(BuildContext context) {
    
   return Scaffold(          
           body:Stack(
            children: [
       const  Boxtop_characters(),
              PageView(
               children: [
                PagesTransform(
                  image: const AssetImage('assets/piccolo_2-sf.png'),
                  textTitleDescription:Text('Sr-Piccolo',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(TODAS LAS SAGAS )',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow: const RowInit(),
                ),
                PagesTransform(
                  image: const AssetImage('assets/piccolo-3-sf.png'),
                  textTitleDescription:Text('Sr-Piccolo',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(TODAS LAS SAGAS )',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow:const RowTranforms() ,
                ),
                PagesTransform(
                  image: const AssetImage('assets/piccolo_orange-sf.png'),
                  textTitleDescription:Text('ORANGE-PICCOLO',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
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

