import 'package:flutter/material.dart';

class AirportTaxisPage extends StatefulWidget {
  const AirportTaxisPage({super.key});

  static const String id = 'AirportTaxisPage';

  @override
  State<AirportTaxisPage> createState() => _AirportTaxisPageState();
}

class _AirportTaxisPageState extends State<AirportTaxisPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
                color: Colors.cyan,
                child: Center(
                  child: Text('GOOGLE MAP',style: TextStyle(fontSize: 40),),
                ),
              )
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            height: height * 0.35,
            width: double.infinity,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                ///mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                        'Where can we take you?',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                  const SizedBox(height: 4.0),
                 Text('Book a trusted local taxi for your trip, and save 10% on selected rides with Genius',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                              fontWeight: FontWeight.normal),
                        ),
                  const SizedBox(height: 20.0),
                  Container(
                    height: height * 0.2,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                            width: 2.0, color: const Color(0xfffeba02))),
                    child: Column(
                      children: [
                        //#Enter pick-up location
                        InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, EnterDestination.id);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            height: height * 0.050,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1.0, color: const Color(0xfffeba02))),
                            child: const Row(
                              children: [
                                Icon(Icons.location_on_outlined,color: Colors.black54),
                                SizedBox(width: 10.0),
                                Text(
                                  'Enter pick-up location',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),

                        //#Enter destination
                        InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, EnterDestination.id);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            height: height * 0.050,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1.0, color: const Color(0xfffeba02))),
                            child: const Row(
                              children: [
                                Icon(Icons.location_on_outlined,color: Colors.black54),
                                SizedBox(width: 10.0),
                                Text(
                                  'Enter destination',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //#tell us when
                        InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, EnterDestination.id);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            height: height * 0.050,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1.0, color: const Color(0xfffeba02))),
                            child: const Row(
                              children: [
                                Icon(Icons.calendar_today_outlined,color: Colors.black54),
                                SizedBox(width: 10.0),
                                Text(
                                  'Tell us when',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //#See prices
                        Container(
                          height: height * 0.045,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(8.0),
                                  bottomLeft: Radius.circular(8.0)),
                              color: Colors.blue,
                              border: Border.all(
                                  width: 1.0, color: const Color(0xfffeba02))),
                          child: const Center(
                            child: Text(
                              'See prices',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
