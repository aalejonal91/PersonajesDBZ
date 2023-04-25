


/* class _TableRow extends StatelessWidget {
  const _TableRow({super.key });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Table(     
        children:  [              
          TableRow(
            children: [
              Container( 
              margin: EdgeInsets.symmetric(horizontal: 8,vertical: 10) ,
              height: 250,
              width: 150,
              color:Color.fromRGBO(69, 64, 41, 0.2)),
              SingleCardCharacters(name: 'Goku',image: const AssetImage('assets/goku_sf_notr.png')),
              SingleCardCharacters(name: 'Vegeta',image: const AssetImage('assets/vegeta_sn_fondo.png')),
                                     
           ]
         ),
       ],
      ),
    );
  }
}

class SingleCardCharacters extends StatelessWidget {
   SingleCardCharacters({super.key, required this.name, required this.image });
  final String name;
  final AssetImage image ;
  @override
  Widget build(BuildContext context) {
    
    
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8,vertical: 10) ,
      height: 250,
      color:const Color.fromRGBO(69, 64, 41, 0.2),
      child:  Column(
        children:   [
          Text(
            name,
            style    : TextStyle(fontWeight:FontWeight.bold,fontSize: 10,color: Colors.white),
            textAlign:TextAlign.center),
    const SizedBox(height: 15),
          SizedBox(
            width: double.infinity,
            height:220,
            //color:Colors.blue,
            child: Image(image: image)
         )
        ],
      )
    );
  }
}
 */