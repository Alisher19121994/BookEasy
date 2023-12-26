import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

Widget travelMoreListItem(BuildContext context,DocumentSnapshot documentSnapshot) {
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
        Text(documentSnapshot['discountTitle'],style: const TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
        const SizedBox(height: 8.0),
        Expanded(child: Text(documentSnapshot['title'],style: const TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal),))
      ],
    ),
  );
}

