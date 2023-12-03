import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget travelMoreListItem(BuildContext context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return Container(
    margin: const EdgeInsets.all(6.0),
    padding: const EdgeInsets.all(12.0),
    height: height * 0.16,
    width: width * 0.55,
    decoration: BoxDecoration(
      border: Border.all(width: 1.2, color: Colors.blue),
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('15% discount',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
        const SizedBox(height: 8.0),
        Text('Enjoy discounts at participants properties worldwide',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal),)
      ],
    ),
  );
}
