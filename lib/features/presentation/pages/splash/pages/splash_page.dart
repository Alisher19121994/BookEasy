import 'package:flutter/material.dart';

import '../../main_page.dart';
import '../../registration/sign_in_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  static const String id = 'SplashPage';
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2)).then((value) =>
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => const SignInPage()),
                (route) => false));
    return const Scaffold(
      backgroundColor: Color(0xff003580),
      body: Center(
        child: Text('BookEasy',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
      ),
    );
  }
}
