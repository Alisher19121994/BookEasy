import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constants/image/local_images.dart';
import '../../../widget/home/more_for_you_list_item.dart';
import '../../../widget/home/more_for_you_list_item_title.dart';
import '../../../widget/home/travel_more_list_item.dart';
import '../enterDestenation/enter_destenation.dart';

class CarRentalPage extends StatefulWidget {
  const CarRentalPage({super.key});
  static const String id = 'CarRentalPage';
  @override
  State<CarRentalPage> createState() => _CarRentalPageState();
}

class _CarRentalPageState extends State<CarRentalPage> {


  final CollectionReference _travelMoreList = FirebaseFirestore.instance.collection('TravelMoreList');
  final CollectionReference _exploreDeals  = FirebaseFirestore.instance.collection('ExploreDeals');
  final CollectionReference _destination = FirebaseFirestore.instance.collection('Destinations');
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.only(left: 7.0,right: 7.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 16.0),
              //#rounded corner details and search
              Container(
                height: height * 0.25,
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
                        Navigator.pushNamed(context, EnterDestination.id);
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
                            Icon(Icons.car_crash_outlined),
                            SizedBox(width: 10.0),
                            Text('Pick-up location',style: TextStyle(color: Colors.black54,fontSize: 16),),
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
                    //#drivers age
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      height: height * 0.050,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1.0,color: const Color(0xfffeba02))
                      ),
                    child:  const Row(
                      children: [
                        Icon(Icons.perm_identity_rounded),
                        SizedBox(width: 10.0),
                        Text('Driver\'s age',style: TextStyle(color: Colors.black54,fontSize: 16),),
                      ],
                    ),
                    ),
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
              const SizedBox(height: 24.0),
              //#travel more, spend less
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Travel more, spend less',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
                  Container(
                      padding: const EdgeInsets.all(2.0),
                      height: height * 0.20,
                      width:  double.infinity,
                      // child: ListView(
                      //   scrollDirection: Axis.horizontal,
                      //   children: [
                      //     travelMoreListItem(context),
                      //     travelMoreListItem(context),
                      //     travelMoreListItem(context),
                      //     travelMoreListItem(context),
                      //     travelMoreListItem(context),
                      //     travelMoreListItem(context),
                      //     travelMoreListItem(context),
                      //     travelMoreListItem(context),
                      //     travelMoreListItem(context),
                      //     travelMoreListItem(context),
                      //     travelMoreListItem(context),
                      //   ],
                      // )
                    child: StreamBuilder(
                      stream: _travelMoreList.snapshots(),
                      builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapShot){
                        if(streamSnapShot.hasData){
                          return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: streamSnapShot.data!.docs.length,
                            itemBuilder: (context, index){
                              final DocumentSnapshot documentSnapshot = streamSnapShot.data!.docs[index];
                              return travelMoreListItem(context,documentSnapshot);
                            },
                          );
                        }
                        return const Center(child: CircularProgressIndicator());
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              //#Explore deals
              Container(
                  height: height * 0.30,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: const Color(0xfff2f6fa)
                  ),
                  child: StreamBuilder(
                    stream: _exploreDeals.snapshots(),
                    builder: (context,AsyncSnapshot<QuerySnapshot> streamSnapShot){
                      if(streamSnapShot.hasData){
                        return ListView.builder(
                            primary: false,
                            shrinkWrap: true,
                            itemCount: streamSnapShot.data!.docs.length,
                            itemBuilder:(context,index){
                              final DocumentSnapshot documentSnapshot = streamSnapShot.data!.docs[index];
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(14.0),
                                    width: width * 0.60,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(documentSnapshot['dealsDiscountTitle'],style: const TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                                            const SizedBox(height: 8.0),
                                            Text(documentSnapshot['dealsTitle'],style:
                                            const TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal),),
                                          ],
                                        ),
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.blue
                                          ),
                                          onPressed: (){


                                          },
                                          child:const Text('Explore deals',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),

                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(topRight: Radius.circular(8.0),bottomRight: Radius.circular(8.0)),
                                          image: DecorationImage(
                                              image: AssetImage(LocalImages.hotel),
                                              fit: BoxFit.cover
                                          )
                                      ),
                                    ),
                                  )
                                ],
                              );
                            }
                        );
                      }
                      return const Center(child: CircularProgressIndicator());
                    },
                  )
              ),
              const SizedBox(height: 16.0),
              //#more for you and list items
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text('More for you',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 6.0),
                  Container(
                    padding: const EdgeInsets.all(2.0),
                    height: height * 0.35,
                    width:  double.infinity,
                    child: StreamBuilder(
                      stream: _destination.snapshots(),
                      builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapShot){
                        if(streamSnapShot.hasData){
                          return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: streamSnapShot.data!.docs.length,
                            itemBuilder: (context, index){
                              final DocumentSnapshot documentSnapshot = streamSnapShot.data!.docs[index];
                              return moreForYouListItem(context,documentSnapshot);
                            },
                          );
                        }
                        return const Center(child: CircularProgressIndicator());
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30.0),
            ],
          ),
        ),
      ),

    );
  }
}
