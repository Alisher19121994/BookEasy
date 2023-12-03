import 'package:flutter/material.dart';

class BookingsPlusPage extends StatefulWidget {
  const BookingsPlusPage({super.key});
  static const String id = 'BookingsPlusPage';
  @override
  State<BookingsPlusPage> createState() => _BookingsPlusPageState();
}

class _BookingsPlusPageState extends State<BookingsPlusPage> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 50.0,left: 12.0,right: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15.0),
                //#clear button
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.clear,size: 30.0,color: Colors.black,),),
                const SizedBox(height: 15.0),
                //#Enter booking details
                const SizedBox(
                  child: Text(
                    'Enter booking details',
                    style: TextStyle(
                        color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
                  ),),
                const SizedBox(height: 40.0),
                //#Booking number
                const SizedBox(
                  child: Text(
                    'Booking number',
                    style: TextStyle(
                        color: Colors.black, fontSize: 18, fontWeight: FontWeight.normal),
                  ),),
                //#Booking number text
                const SizedBox(height: 12.0),
                SizedBox(
                  height: height * 0.080,
                  child: TextFormField(
                      minLines: 1,
                      maxLines: 10,
                      keyboardType:TextInputType.multiline,
                      // controller: controller.controllerUsername,
                      style: const TextStyle(color: Colors.black),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder()),
                      onChanged: (value) =>{

                      }
                  ),
                ),
                //#PIN code
                const SizedBox(
                  child: Text(
                    'PIN code',
                    style: TextStyle(
                        color: Colors.black, fontSize: 18, fontWeight: FontWeight.normal),
                  ),),
                const SizedBox(height: 12.0),
                //#PIN code text
                SizedBox(
                  height: height * 0.080,
                  child: TextFormField(
                      minLines: 1,
                      maxLines: 10,
                      keyboardType:TextInputType.multiline,
                      // controller: controller.controllerUsername,
                      style: const TextStyle(color: Colors.black),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder()),
                      onChanged: (value) =>{

                      }
                  ),
                ),
                const SizedBox(height: 40.0),
                Center(
                  child: SizedBox(
                    height: height * 0.055,
                    width: width * 0.80,
                    child: ElevatedButton(
                      onPressed: (){


                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:  Colors.blueAccent
                      ),
                      child:const Text(
                        'Manage booking',
                        style: TextStyle(
                            color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),),
                  ),
                ),
                const SizedBox(height: 12.0),
                //#manage another type of booking
                const SizedBox(
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      'Do you want to manage another type of booking?',
                      style: TextStyle(
                          color: Colors.black, fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                  ),),
                const SizedBox(height: 26.0),
                //#Airport taxis
                const SizedBox(
                  child: Row(
                    children: [
                      Icon(Icons.airplanemode_active,color: Colors.blue,),
                      SizedBox(width: 8.0,),
                      FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          'Airport taxis',
                          style: TextStyle(
                              color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),),
                const SizedBox(height: 15.0),
                //#Car rentals
                const SizedBox(
                  child: Row(
                    children: [
                      Icon(Icons.local_taxi_rounded,color: Colors.blue,),
                      SizedBox(width: 8.0,),
                      FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          'Car rentals',
                          style: TextStyle(
                              color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
