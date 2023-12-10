import 'package:flutter/material.dart';

import '../../../pages/mainScreens/profile/discover/deals/details_of_city/item_of_city.dart';

Widget itemListDealsNextPage(BuildContext context){
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return Column(
    children: [
      InkWell(
        onTap: (){
          Navigator.pushNamed(context, ItemOfCityPage.id);
        },
        child: Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(2.0),
          height: height * 0.35,
          width: double.infinity,
          child: Row(
            children: [
              Container(
                height: height,
                width: width * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image:  const DecorationImage(
                    image: NetworkImage('https://media.timeout.com/images/105892648/1536/864/image.webp'),
                    fit: BoxFit.cover
                  )
                ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black54.withOpacity(0.4),
                        Colors.black54.withOpacity(0.4),
                        Colors.black54.withOpacity(0.4),
                        Colors.black54.withOpacity(0.4),
                      ]
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 24,
                        width: double.infinity,
                        padding: const EdgeInsets.only(left: 3.0,right: 3.0),
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(6.0),topRight: Radius.circular(6.0)),),
                        child: const Center(child: Text('Breakfast included',style: TextStyle(color: Colors.white,fontSize: 12.0),)),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 6.0,right: 6.0),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Retro Amir Hotel',style: TextStyle(color: Colors.black,fontSize: 19.0,fontWeight: FontWeight.bold),),
                            SizedBox(height: 6.0,),
                            Text('1.4 miles from centre',style: TextStyle(color: Colors.black,fontSize: 14.0),),
                            SizedBox(height: 6.0,),
                            Text('Late Escape',style: TextStyle(color: Colors.greenAccent,fontSize: 14.0),),
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('Hotel room: 1 bed',style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                            SizedBox(height: 6.0,),
                            Text('Price for 1 night, 2 adults',style: TextStyle(color: Colors.black,fontSize: 16.5,fontWeight: FontWeight.bold),),
                            SizedBox(height: 6.0,),
                            Text('US \$ 45',style: TextStyle(color: Colors.black,fontSize: 20.5,fontWeight: FontWeight.bold),),
                            SizedBox(height: 6.0,),
                            Text('Includes taxes and changes',style: TextStyle(color: Colors.black,fontSize: 14.5,fontWeight: FontWeight.bold),),
                            SizedBox(height: 6.0,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.check,color: Colors.green,size: 18,),
                                SizedBox(width: 6.0,),
                                Text('Free cancellation',style: TextStyle(color: Colors.green,fontSize: 17.0,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            SizedBox(height: 6.0,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.check,color: Colors.green,size: 18,),
                                SizedBox(width: 6.0,),
                                Text('No payment needed',style: TextStyle(color: Colors.green,fontSize: 17.0,fontWeight: FontWeight.bold),),
                              ],
                            ),

                          ],
                        ),

                      ],
                    ),
                  )

              ),
            ],
          ),
        ),
      ),
      const Divider(thickness: 1.0)
    ],
  );
}