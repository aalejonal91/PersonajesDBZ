

/* class  _SingleCardsTeams_Left extends StatelessWidget {
  const  _SingleCardsTeams_Left({ super.key, required this.name, required this.image });

  final String name;
  final AssetImage image ;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5,right: 5),
          child: RotatedBox(
              quarterTurns: 1,
              child: Text(name,
                style    : const TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color: Colors.white),
                textDirection: TextDirection.rtl, textAlign: TextAlign.center),
              ),
        ),
        Container(             
          margin: const EdgeInsets.symmetric(vertical: 10) ,
          height: 400,
          width: 120,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(30),
            color:const Color.fromRGBO(69, 64, 41, 0.2),
            ),
          child: image,  
          ),                
        ],
      );          
    }
}

class  _SingleCardsTeams_Right extends StatelessWidget {
  const  _SingleCardsTeams_Right({ super.key, required this.name, required this.image });

  final String name;
  final AssetImage image ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(             
          margin: const EdgeInsets.symmetric(vertical: 7) ,
          height: 400,
          width: 120,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(30),
            color:const Color.fromRGBO(69, 64, 41, 0.2),
            )
          ),
        Padding(
          padding: const EdgeInsets.only(left: 5,right: 10),
          child: RotatedBox(
            quarterTurns: 1,
            child: Text(name,
                    style    : const TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color: Colors.white),
                    textDirection: TextDirection.rtl, textAlign: TextAlign.center),
                  ),
        ),                
        ],
      );          
    }
} */