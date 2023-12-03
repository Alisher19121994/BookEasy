import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget moreForYouListItem(BuildContext context){
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return Container(
    margin: const EdgeInsets.only(left: 3.0,right: 3.0,top: 6.0),
    height: height * 0.3,
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
              Text('Sales day', style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold),),
              Text('Save up to 25% on cars rentals', style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.normal),),
            ],
          ),
        )
      ],
    ),
  );
}