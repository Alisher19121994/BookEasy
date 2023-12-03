import 'package:flutter/material.dart';

import '../../../../../constants/image/local_images.dart';

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
                  height: height * 0.23,
                  width: double.infinity,
                  child: const Center(
                      child: Image(image: AssetImage(LocalImages.images)))
              ),
              const SizedBox(height: 30.0),
              Column(
                children: [
                  SizedBox(
                      height: height * 0.04,
                      width: double.infinity,
                      child: const Center(
                          child: Text('Sometimes plans change',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24),))
                  ),
                  // const SizedBox(height: 18.0),
                  SizedBox(
                      height: height * 0.08,
                      width: double.infinity,
                      child: const Center(
                          child: Column(
                            children: [
                              Text('Here you can refer to all trips you have cancelled.',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 18),),
                              Text('Maybe next time!',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 18),),
                            ],
                          ))
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
