import 'package:flutter/material.dart';

class ItemOfCityPage extends StatefulWidget {
  const ItemOfCityPage({super.key});

  static const String id = 'ItemOfCityPage';
  @override
  State<ItemOfCityPage> createState() => _ItemOfCityPageState();
}

class _ItemOfCityPageState extends State<ItemOfCityPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: false,
        backgroundColor: const Color(0xff003290),
        title: const  Text('Retro Amir Hotel',style:
        TextStyle(color: Colors.white,fontSize: 19.0,fontWeight: FontWeight.normal),
          overflow: TextOverflow.ellipsis,),
      ),
      body: Container(
        margin: const EdgeInsets.only(right: 8.0,left: 8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24.0),
              const  Text('Retro Amir Hotel',style:
              TextStyle(color: Colors.black,fontSize: 24.0,fontWeight: FontWeight.bold),),
              const SizedBox(height: 24.0),
              //#Image
              Container(
                height: height * .3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage('https://media.timeout.com/images/105892648/1536/864/image.webp'),
                    fit: BoxFit.cover
                  )
                ),
              ),
              const SizedBox(height: 24.0),
              //#Free cancellation
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.check,color: Colors.green,size: 18,),
                  SizedBox(width: 6.0,),
                  Text('Free cancellation',style: TextStyle(color: Colors.green,fontSize: 17.0,fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 6.0,),
              //#No payment needed
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.check,color: Colors.green,size: 18,),
                  SizedBox(width: 6.0,),
                  Text('No payment needed',style: TextStyle(color: Colors.green,fontSize: 17.0,fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 6.0,),
              //#Breakfast included
              Row(
                children: [
                  Icon(Icons.coffee_outlined),
                  SizedBox(width: 6.0,),
                  const  Text('Breakfast included',style:
                  TextStyle(color: Colors.black,fontSize: 16.0,fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 6.0,),
              //# Free wifi
              SizedBox(
                height: height * .08,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.wifi,color: Colors.black54,),
                        SizedBox(width: 6.0,),
                        const  Text('Free WiFi',style:
                        TextStyle(color: Colors.black,fontSize: 16.0,fontWeight: FontWeight.normal),),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.sunny_snowing,color: Colors.black54,),
                        SizedBox(width: 6.0,),
                        const  Text('Air condition',style:
                        TextStyle(color: Colors.black,fontSize: 16.0,fontWeight: FontWeight.normal),),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.tv,color: Colors.black54,),
                        SizedBox(width: 6.0,),
                        const  Text('TV',style:
                        TextStyle(color: Colors.black,fontSize: 16.0,fontWeight: FontWeight.normal),),
                      ],
                    ),
                  ],

                ),
              ),
              const SizedBox(height: 14.0),
              //#Hotel details
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hotel room: 1 bed',style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                  SizedBox(height: 6.0,),
                  Text('Price for 1 night, 2 adults',style: TextStyle(color: Colors.black,fontSize: 16.5,fontWeight: FontWeight.normal),),
                  SizedBox(height: 6.0,),
                  Text('US \$ 45',style: TextStyle(color: Colors.black,fontSize: 20.5,fontWeight: FontWeight.bold),),
                  SizedBox(height: 6.0,),
                  Text('Additional charges may apply',style: TextStyle(color: Colors.black,fontSize: 16.5,fontWeight: FontWeight.normal),),

                ],
              ),
              const SizedBox(height: 14.0),
              //#No credit card needed
              Container(
                padding: const EdgeInsets.all(6.0),
                height: height * .1,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(2.0),
                  border: Border.all(width: 0.5),
                  color: const Color(0xffffffff)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.credit_card_off_outlined),
                        SizedBox(width: 20.0,),
                        const  Text('No credit card needed',style:
                        TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    const SizedBox(height: 14.0),
                    const  Text('Some options are bookable without a credit card',style:
                    TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.normal),overflow: TextOverflow.ellipsis,),
                  ],
                ),
              ),
              const SizedBox(height: 14.0),
              //#Google Map
              Container(
                padding: const EdgeInsets.all(6.0),
                height: height * .4,
                width: width * 1,
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(2.0),
                    border: Border.all(width: 0.5),
                    color: const Color(0xffffffff)
                ),
                child:Center(
                  child: const  Text('Google map Location',style:
                  TextStyle(color: Colors.black,fontSize: 30.0,fontWeight: FontWeight.normal),overflow: TextOverflow.ellipsis,),
                )
              ),

              const SizedBox(height: 30.0),

            ],
          ),
        ),
      ),
    );
  }
}
