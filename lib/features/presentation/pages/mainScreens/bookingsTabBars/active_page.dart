import 'package:flutter/material.dart';

import '../../../../../core/constants/image/local_images.dart';


class ActivePage extends StatefulWidget {
  const ActivePage({super.key});
  static const String id = 'ActivePage';

  @override
  State<ActivePage> createState() => _ActivePageState();
}

class _ActivePageState extends State<ActivePage> {
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
                  height: height * 0.26,
                  width: double.infinity,
                  child: const Center(
                      child: Image(image: AssetImage(LocalImages.images)))
              ),
              const SizedBox(height: 30.0),
              Column(
                children: [
                  SizedBox(
                      height: height * 0.04,
                      width:width * 0.50,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(width: 1.0)
                        ),
                        onPressed: (){

                        },
                        child: const Center(
                            child: Text('Where to next?',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),)),
                      )
                  ),
                   const SizedBox(height: 8.0),
                  const SizedBox(
                      child: Center(
                          child: Text('You have not started any trips yet!',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 14),))
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
