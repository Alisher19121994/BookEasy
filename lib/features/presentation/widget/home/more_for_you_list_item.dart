import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

Widget moreForYouListItem(BuildContext context,DocumentSnapshot documentSnapshot){
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  //print(documentSnapshot.get(field));
  return Container(
    margin: const EdgeInsets.only(left: 3.0,right: 3.0,top: 6.0),
    height: height * 0.45,
    width: width * 0.45,
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: const DecorationImage(
              image: NetworkImage('https://media.istockphoto.com/id/104731717/photo/luxury-resort.jpg?s=612x612&w=0&k=20&c=cODMSPbYyrn1FHake1xYz9M8r15iOfGz9Aosy9Db7mI='),
              fit: BoxFit.cover
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  colors: [
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.6),
                    Colors.black.withOpacity(0.4),
                    Colors.black.withOpacity(0.2),
                  ]
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(documentSnapshot['hotel_place_name'], style: const TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
              const SizedBox(height: 2.0),
           //   Text(documentSnapshot.get('hotel_name'), style: const TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.normal),),
              const SizedBox(height: 2.0),
             // Text(documentSnapshot['hotel_title'], style: const TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.normal),),
            ],
          ),
        )
      ],
    ),
  );
}