import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget moreForYouListItemTitle(BuildContext context,){
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
              image: NetworkImage('https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dHJpcHxlbnwwfHwwfHx8MA%3D%3D'),
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
                    Colors.black.withOpacity(0.4),
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
              Text('Quick trips', style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
            ],
          ),
        )
      ],
    ),
  );
}