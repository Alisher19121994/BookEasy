import 'package:flutter/material.dart';
import '../../../pages/mainScreens/profile/discover/deals/item_list_page.dart';

Widget dealsItemList(BuildContext context){
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return InkWell(
    onTap: (){
      Navigator.pushNamed(context, DealsItemListPage.id);
    },
    child: Container(
      height: height * 0.3,
      margin: const EdgeInsets.only(left: 8.0,right: 8.0,top: 2.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: height * 0.2,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('https://media.timeout.com/images/105892648/1536/864/image.webp'),
                    fit: BoxFit.cover
                )
            ),
            child: Container(
              padding: const EdgeInsets.all(14.0),
              height: height * 0.2,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(0.8),
                        Colors.black.withOpacity(0.8),
                        Colors.black.withOpacity(0.4),
                        Colors.black.withOpacity(0.1)
                      ]
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Bukhara',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                  SizedBox(height: 4.0),
                  Text('287 properties',style: TextStyle(color: Colors.white,fontSize: 16),),
                  SizedBox(height: 4.0),
                  Text('64 Late Escape Deals',style: TextStyle(color: Colors.white,fontSize: 16),),
                ],
              ),
            ),
          ),
          const SizedBox(height:4.0),
          Container(
            height: height * 0.080,
            padding: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              color: Colors.white
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Average price: ',style: TextStyle(color: Colors.black,fontSize: 14),),
                        SizedBox(width: 4.0),
                        Text('\$ 45',style: TextStyle(color: Colors.black),),
                      ],
                    ),
                    SizedBox(height: 6.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Deals started at: ',style: TextStyle(color: Colors.black,fontSize: 14),),
                        SizedBox(width: 4.0),
                        Text('\$ 9',style: TextStyle(color: Colors.black),),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_forward_ios_rounded,size: 20,)
                  ],
                )
              ],
            ),
          )

        ],
      ),
    ),
  );
}