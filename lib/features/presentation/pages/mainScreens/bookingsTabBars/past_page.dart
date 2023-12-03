import 'package:flutter/material.dart';

import '../../../../../constants/image/local_images.dart';

class PastPage extends StatefulWidget {
  const PastPage({super.key});
  static const String id = 'PastPage';
  @override
  State<PastPage> createState() => _PastPageState();
}

class _PastPageState extends State<PastPage> {
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
                          child: Text('Revisit past trips',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24),))
                  ),
                  // const SizedBox(height: 18.0),
                  SizedBox(
                      height: height * 0.08,
                      width: double.infinity,
                      child: const Center(
                          child: Text('Here you can refer to all trips and get inspired for your next ones',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 18),))
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
