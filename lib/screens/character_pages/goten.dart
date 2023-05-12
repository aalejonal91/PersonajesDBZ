import 'package:flutter/material.dart';
import 'package:designs_initials_flutter/widgets/widgets.dart';

class GotenPage extends StatelessWidget {
  const GotenPage({super.key});

  @override
  Widget build(BuildContext context) {
    
   return Scaffold(          
           body:Stack(
            children: [
              const Boxtop_characters(),
              PageView(
               children: [
                PagesTransform(
                  image: const AssetImage('assets/goten___1_sf .png'),
                  textTitleDescription:Text('GOTEN',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(HIJO DE GOKU Y MILK)',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow: const RowInit(),
                ),
                PagesTransform(
                  image: const AssetImage('assets/goten_ssy-sf .png'),
                  textTitleDescription:Text('GOTEN-SSY',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(SAGA M-BUU)',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow:const RowTranforms(),
                ),
                PagesTransform(
                  image: const AssetImage('assets/gotenk_s-sf.png'),
                  textTitleDescription:Text("GOTENK'S",style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(FUSION CON TRUNKS-SAGA M-BU)',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow:const RowTranforms()                                 
                ),
                PagesTransform(
                  image: const AssetImage('assets/gotenk_s_ssy-sf.png'),
                  textTitleDescription:Text("GOTENK'S-SSY",style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45 )),
                  textSubTitleDescription:Text('(FUSION CON TRUNKS-SAGA M-BU)',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,)),
                  typerow:const RowEnd()
              ),
            ]
          )
        ],
      ) 
    );
  }
}




