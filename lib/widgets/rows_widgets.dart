import 'package:flutter/material.dart';


class RowInit extends StatelessWidget {
  const RowInit({super.key,});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [                          
        SizedBox(
          width: 110,
          height: 140,
          child: Image.asset('assets/retroceso_rapido_sf.gif')
          ),
        const SizedBox(width:40),  
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('DESLIZA',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35 )),
            Text('( PARA VER TRANSFORMACION )',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,fontSize: 10 )),
            
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
          SizedBox(
            width: 90,
            height: 120,
            //color: Colors.red,
            child: Image.asset('assets/retroceso_rapido_sf.gif',fit:BoxFit.cover)
            ),
          //SizedBox(width:40),  
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('DESLIZA',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35 )),
              Text('( PARA VER TRANSFORMACION )',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,fontSize: 10 )),            
            ],
          ),
          SizedBox(
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
        SizedBox(
          width: 110,
          height: 120,
          //color: Colors.orange,
          child: Image.asset('assets/avance_rapido_sf.gif',fit:BoxFit.cover)
          ),                         
        const SizedBox(width:40),  
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('DESLIZA',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30 )),
            Text('( PARA VER TRANSFORMACION )',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color.fromARGB(255, 94, 92, 92),fontWeight: FontWeight.bold,fontSize: 10 )),
          ],
        ),          
      ],
    );
  }
}