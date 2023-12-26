import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../router/routes_name.dart';
import '../bloc/splash_bloc.dart';
import '../bloc/splash_event.dart';
import '../bloc/splash_state.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  static const String id = 'SplashPage';

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    context.read<SplashBloc>().add(const SplashEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff003580),
        body: BlocListener<SplashBloc, SplashState>(
          listener: (context, state) {
            if (state.isTimerFinished) {
              Navigator.pushReplacementNamed(context, Routes.mainPage);
            }
          },
          child: const AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.dark,
            child: Scaffold(
              body: Stack(children: [
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 84,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
                Positioned.fill(
                  child: Center(
                    child: Text(
                      'BookEasy',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ));
  }
}
