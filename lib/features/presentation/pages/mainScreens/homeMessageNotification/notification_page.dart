import 'package:flutter/material.dart';

import '../../../../../core/constants/image/local_images.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});
  static const String id = 'NotificationPage';
  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
          'Your notifications',
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
                image: AssetImage(LocalImages.notification),
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30.0),
              child: const Text(
                'You do not have any notifications',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30.0),
              child: const Text(
                'Notifications let you quickly take actions on upcoming or current bookings',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 16),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
