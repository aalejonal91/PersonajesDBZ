import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';


class TitlePage extends StatelessWidget {
  const TitlePage({ super.key });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20,vertical: 20 ),
        child: Row(
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [                  
                Text('Personajes Dragon Ball Z', style:TextStyle( fontWeight: FontWeight.bold,fontSize: 22 )),  
                Text('DBZ-DBSUPER', style:TextStyle(color: Colors.black45)),
              ],
            ),
            Expanded(child: Container()),             
            const Icon(Icons.star,color: Colors.red),
            const Text('100', style:TextStyle( fontSize: 25)
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonIconSection extends StatelessWidget {
  const ButtonIconSection({super.key });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10) ,
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 0),
        child: Row(
          children: [
            const CustomColumButonIcon(icon:Icons.local_fire_department,text: 'Fases'),
            Expanded(child: Container()),
            const CustomColumButonIcon(icon:Icons.language_outlined,text: 'Planeta Origen'),
            Expanded(child: Container()),
            const  CustomColumButonIcon(icon:Icons.token,text: 'Rol'),
          ],
        ),
      ),
    );
  }
}

class CustomColumButonIcon extends StatelessWidget {
final IconData icon;
final String text;

  const CustomColumButonIcon({ super.key, required this.icon, required this.text });

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [                               
        Icon(icon, color: Colors.blue,size: 35,),
        Text(text,style: const TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
      ],
    );
  }
}

class FastLoremIpsumContainer extends StatelessWidget {
  const FastLoremIpsumContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:15),
      child: Container(
              child: const Column( 
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('DESCRIPCION',style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height:8),
              Text('Dragon Ball Z acontece tras los sucesos de la saga de Piccolo del manga escrito y dibujado, como no podía ser de otra forma, por Akira Toriyama. Se trata de la secuela más larga de la saga Dragon Ball. La trama de Dragon Ball Z se centra en la vida adulta de Son Goku, quien tendrá que defender la tierra de los numerosos villanos que amenazan con destruirla. Además, la serie trama de forma paralela la madurez de su hijo Gohan. La producción destaca por tener un tono más serio que su predecesora.Se divide en cinco sagas diferentes (Saiyajin, Freezer, Garlic Jr., Cell y Majin Buu) en un total de 291 episodios.',
                textAlign: TextAlign.justify),
          ]
        )
      ),
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
    var size = MediaQuery.of(context).size;
    return Container(
      margin:const EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: Stack(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: size.height*0.5),
            child: TweenAnimationBuilder(        
              tween: Tween(
                begin: 1.0,end: 0.0),
                duration: const Duration(milliseconds: 2000),
                builder: (context, value, child) {
                  var titleDescription = textTitleDescription;
                  var subTitleDescription = textSubTitleDescription; 
                  var rowInit = typerow;
                  var size = MediaQuery.of(context).size;
                  return Transform.translate(
                  offset: Offset(0.0,value*350), 
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height:size.height ,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.6),//colorBlendMode: BlendMode.modulate,
                          borderRadius:const BorderRadius.vertical(
                            top: Radius.circular(40))
                   )
                 ),
                 Padding(
                   padding: EdgeInsets.only(top:size.height*0.15,left: 8,bottom: 10),
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
          duration: const Duration(milliseconds: 2000),
          builder: (context, value, child) {
            return ZoomIn (
              duration: const Duration(milliseconds: 900),
              child: Image(image:image),
          );       
        },                  
      ),
    );
  }
}


