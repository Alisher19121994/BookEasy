import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget itemOfGridView(){
  return Column(
    children: [
      Row(
        children: [
          Icon(Icons.wifi),
          SizedBox(width: 6.0,),
          const  Text('Free WiFi',style:
          TextStyle(color: Colors.black,fontSize: 16.0,fontWeight: FontWeight.bold),),
        ],
      ),
    ],

  );
}