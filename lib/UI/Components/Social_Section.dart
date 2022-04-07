import 'package:flutter/material.dart';

Widget SocialSection(url){
   return Container(

     width: 70,
     height: 50,
     child: Card(
       elevation: 1,
       child: Image.asset(url,),
     ),
   );
}