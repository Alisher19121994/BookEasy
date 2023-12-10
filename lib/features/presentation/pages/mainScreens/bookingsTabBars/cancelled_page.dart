import 'package:flutter/material.dart';

import '../../../../../core/constants/image/local_images.dart';


class CancelledPage extends StatefulWidget {
  const CancelledPage({super.key});
  static const String id = 'CancelledPage';
  @override
  State<CancelledPage> createState() => _CancelledPageState();
}

class _CancelledPageState extends State<CancelledPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.all(13.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.all(24.0),
                  padding: const EdgeInsets.all(18.0),
                  height: height * 0.30,
                  width: double.infinity,
                  child: const Center(
                      child: Image(image: AssetImage(LocalImages.mapC)))
              ),
              const SizedBox(height: 30.0),
              Column(
                children: [
                  SizedBox(
                      height: height * 0.04,
                      width: width * 0.70,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: const BorderSide(width: 1.0)
                        ),
                        onPressed: (){

                        },
                        child: const Center(
                            child: Text('Sometimes plans change',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),)),
                      )
                  ),
                   const SizedBox(height: 8.0),
                  const SizedBox(
                      //height: height * 0.08,
                      //width: double.infinity,
                      child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Here you can refer to all trips you have cancelled.',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 14),),
                              SizedBox(height: 4.0),
                              Text('Maybe next time!',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 15),),
                            ],
                          )
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
