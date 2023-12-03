import 'package:flutter/material.dart';

class TitlePage extends StatefulWidget {
  const TitlePage({super.key});
  static const String id = 'TitlePage';
  @override
  State<TitlePage> createState() => _TitlePageState();
}

class _TitlePageState extends State<TitlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff003290),
        title: const Text('Title', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {

            },
            icon: const Icon(Icons.share,color: Colors.white,size: 30.0,),
          ),

        ],
      ),
    );
  }
}
