import 'package:flutter/material.dart';


class Boxtop extends StatelessWidget {
  const Boxtop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height:double.infinity,
      child: const Image( image: AssetImage('assets/templo_kaio.jpg'),fit: BoxFit.cover,),                    
    );
  }
}

class Boxtop_characters extends StatelessWidget {
  const Boxtop_characters({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height:double.infinity,
      child: const Image( image: AssetImage('assets/kamehouse.jpg'),fit: BoxFit.cover,),                    
    );
  }
}