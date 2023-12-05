import 'package:flutter/material.dart';

import '../../../../../widget/profile/discover/deals_page.dart';

class DealsPage extends StatefulWidget {
  const DealsPage({super.key});

  static const String id = 'DealsPage';

  @override
  State<DealsPage> createState() => _DealsPageState();
}

class _DealsPageState extends State<DealsPage> {

  void bottomSheetOfWhereToGo(){
    showModalBottomSheet(
      isDismissible: true,
      isScrollControlled: true,
      // shape: const RoundedRectangleBorder(
      //   borderRadius: BorderRadius.vertical(
      //     top: Radius.circular(20.0),
      //   ),
      // ),
      context: context,
      builder: (BuildContext context){
        var height = MediaQuery.of(context).size.height;
        var width = MediaQuery.of(context).size.width;
        return  Container(
          margin: const EdgeInsets.all(10.0),
            height: height * 0.28,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        icon: const Icon(Icons.clear,size: 30,),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    const Expanded(child: Center(child: Text('Change your search',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),))),
                    const SizedBox(width: 50.0),
                  ],
                ),
                const SizedBox(height: 20.0),
                Container(
                  height: height * 0.2,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(width: 2.0,color: const Color(0xfffeba02))
                  ),
                  child: Column(
                    children: [
                      //#Enter your destination
                      InkWell(
                        onTap: (){
                         // Navigator.pushNamed(context, EnterDestination.id);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          height: height * 0.050,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1.0,color: const Color(0xfffeba02))
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.search),
                              SizedBox(width: 10.0),
                              Text('Enter your destination',style: TextStyle(color: Colors.black54,fontSize: 16),),
                            ],
                          ),
                        ),
                      ),

                      Container(
                        height: height * 0.050,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1.0,color: const Color(0xfffeba02))
                        ),),
                      Container(
                        height: height * 0.050,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1.0,color: const Color(0xfffeba02))
                        ),),
                      //#Search
                      Container(
                        height: height * 0.045,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(bottomRight: Radius.circular(8.0),bottomLeft: Radius.circular(8.0)),
                            color: Colors.blue,
                            border: Border.all(width: 1.0,color: const Color(0xfffeba02))
                        ),
                        child: const Center(child: Text('Search',style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.normal),),),),

                    ],
                  ),
                ),
              ],
            ),
        );
      },

    );
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffdddddd),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: false,
        backgroundColor: const Color(0xff003290),
        title: const Text(
          'Deals',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
              Column(
                children: [
                  //#Where do you want to go? ---> bottomSheet!!!
                  InkWell(
                    onTap: (){
                      bottomSheetOfWhereToGo();
                    },
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1.0),
                          color: Colors.white
                      ),
                      padding: const EdgeInsets.all(8.0),
                      height:height * 0.053,
                      child: const Row(
                        children: [
                          Icon(Icons.search,size: 18,),
                          SizedBox(width: 6.0),
                          Text('Where do you want to go?',style: TextStyle(color: Colors.black,fontSize: 15.0),),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  //#Book and other details
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1.0),
                        color: Colors.white
                    ),
                    padding: const EdgeInsets.all(12.0),
                    height:height * 0.13,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //#Book between 5 Sep 2023 and Jan 2024
                        Row(
                          children: [
                            Icon(Icons.check,size: 18,),
                            SizedBox(width: 10.0),
                            Expanded(child: Text('Book between 5 Sep 2023 and Jan 2024',style: TextStyle(color: Colors.black,fontSize: 13.0),overflow: TextOverflow.ellipsis)),
                          ],),
                        SizedBox(height: 13.0),
                        //#Stay any time between 5 Sep 2023 and Jan 2024
                        Row(
                          children: [
                            Icon(Icons.calendar_today_outlined,size: 18,color: Colors.redAccent,),
                            SizedBox(width: 10.0),
                            Expanded(child: Text('Stay any time between 5 Sep 2023 and Jan 2024',style: TextStyle(color: Colors.black,fontSize: 13.0),overflow: TextOverflow.ellipsis,)),
                          ],),
                        SizedBox(height: 13.0),
                        //#Save at least 15%
                        Row(
                          children: [
                            Icon(Icons.price_change_outlined,size: 18,color: Colors.redAccent,),
                            SizedBox(width: 10.0),
                            Expanded(child: Text('Save at least 15%',style: TextStyle(color: Colors.black,fontSize: 13.0),overflow: TextOverflow.ellipsis)),
                          ],),
                      ],
                    ),
                  ),
                ],
              ),
              ListView(
                    primary: false,
                    shrinkWrap: true,
                    children: [
                      dealsItemList(context),
                      dealsItemList(context),
                      dealsItemList(context),
                      dealsItemList(context),
                      dealsItemList(context),
                      dealsItemList(context),
                      dealsItemList(context),
                      dealsItemList(context),
                    ],
                  )
            ],
          ),
      ),
    );
  }
}
