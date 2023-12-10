import 'package:flutter/material.dart';
import '../../../../../core/constants/image/local_images.dart';
import '../../main_page.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  static const String id = 'MessagePage';

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xff003290),
        title: const Text(
          'Messages',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.14,
              child: const Image(
                image: AssetImage(LocalImages.message),
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30.0),
              child: const Text(
                'You have no new messages, to receive messages simply book your next adventure',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 16),
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 100.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue
                ),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: const Center(
                    child:  Text(
                    'Book now',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),)
              ),
            )
          ],
        ),
      ),
    );
  }
}
