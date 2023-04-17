import 'package:flutter/material.dart';


class TitlePage extends StatelessWidget {
  const TitlePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20,vertical: 20 ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [                  
                Text(
                  'Goku Super Saiyayin God',
                   style:TextStyle( fontWeight: FontWeight.bold,fontSize: 22 )
                   ),  
                Text(
                  'Blue and Red States', 
                  style:TextStyle(color: Colors.black45)
                  ),
              ],
            ),
            Expanded(child: Container()),             
             const Icon(Icons.star,color: Colors.red),
            const Text(
              '41',
              style:TextStyle( fontSize: 25,  )
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonIconSection extends StatelessWidget {
  const ButtonIconSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.yellow,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
        child: Row(
          children: [
            const CustomColumButonIcon(icon:Icons.local_fire_department,text: 'SSY(3-G-UI)'),
            Expanded(child: Container()),
            const CustomColumButonIcon(icon:Icons.language_outlined,text: 'PLANETA VEGGITO'),
            Expanded(child: Container()),
            const  CustomColumButonIcon(icon:Icons.token,text: 'HEROE'),
          ],
        ),
      ),
    );
  }
}

class CustomColumButonIcon extends StatelessWidget {
final IconData icon;
final String text;

  const CustomColumButonIcon({
    super.key, required this.icon, required this.text,
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [                               
        Icon(icon, color: Colors.blue,size: 35,),
        //Text('EVOLUCIONES:',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
        Text(text,style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
      ],
    );
  }
}

class FastLoremIpsumContainer extends StatelessWidget {
  const FastLoremIpsumContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:10),
      child: Container(
        height: 100,
        //color: Colors.green,
        child: Text('Est quis consectetur anim culpa minim fugiat. 
        Ea veniam laborum cillum sunt duis magna quis et laborum. 
        Dolor magna amet nulla laborum. Deserunt elit consectetur 
        est id veniam adipisicing qui ullamco ea anim culpa in nostrud est.
         Quis ad ipsum magna aliquip incididunt officia exercitation. 
         Velit et proident in nulla magna aliquip enim elit quis sit aute. 
         Cupidatat sint sint sunt dolor magna consequat aliqua amet Lorem
          irure et voluptate elit sunt.'),
      ),
    );
  }
}