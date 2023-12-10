import 'package:booking_uz/features/presentation/pages/registration/sign_in_page.dart';
import 'package:flutter/material.dart';
import '../main_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});
  static const String id = 'SignUpPage';
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      //backgroundColor: const Color(0xff003290),
      backgroundColor: Colors.white,
      body: Form(
        key: formKey,
        child: Container(
          margin: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  'BookEasy',
                  style: TextStyle(
                      color: Colors.blue, fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 40.0),
              //#email
              SizedBox(
                height: height * 0.055,
                child: TextFormField(
                  // controller: controller.controllerUsername,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.perm_identity,
                          color: Colors.black,
                        ),
                        labelText: 'Email',
                        border: OutlineInputBorder()),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return 'Email must not be empty';
                      }
                      return null;
                    },
                    onChanged: (value) =>{

                    }
                ),
              ),
              const SizedBox(height: 8.0),
              //#Password
              SizedBox(
                  height: height * 0.055,
                  child:  TextFormField(
                    //controller: controller.controllerPassword,
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                      // obscureText: controller.passwordVisible,
                      style: const TextStyle(color: Colors.black), decoration: InputDecoration(
                      suffixIcon: IconButton(
                        // icon: Icon(
                        //     controller.passwordVisible
                        //         ? Icons.visibility
                        //         : Icons.visibility_off),
                        onPressed: () {
                          // controller.passwordVisible = !controller.passwordVisible;
                          // controller.isValidPassword(controller.passwordVisible);

                        }, icon: Icon(Icons.visibility),
                      ),
                      prefixIcon: const Icon(
                        Icons.lock_open_rounded,
                        color: Colors.black,
                      ),
                      labelText: 'Password',
                      border: const OutlineInputBorder()
                  ),
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return 'Password must not be empty';
                        }
                        return null;
                      },
                      onChanged: (value) => {
                        // controller.password = value,
                        // controller.isValidLogin(controller.password)
                      }
                  )
              ),
              const SizedBox(height: 8.0),
              //#Conform Password
              SizedBox(
                  height: height * 0.055,
                  child:  TextFormField(
                    //controller: controller.controllerPassword,
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                      // obscureText: controller.passwordVisible,
                      style: const TextStyle(color: Colors.black), decoration: InputDecoration(
                      suffixIcon: IconButton(
                        // icon: Icon(
                        //     controller.passwordVisible
                        //         ? Icons.visibility
                        //         : Icons.visibility_off),
                        onPressed: () {
                          // controller.passwordVisible = !controller.passwordVisible;
                          // controller.isValidPassword(controller.passwordVisible);

                        }, icon: Icon(Icons.visibility),
                      ),
                      prefixIcon: const Icon(
                        Icons.lock_open_rounded,
                        color: Colors.black,
                      ),
                      labelText: 'Confirm password',
                      border: const OutlineInputBorder()
                  ),
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return 'Password must not be empty';
                        }
                        return null;
                      },
                      onChanged: (value) => {
                        // controller.password = value,
                        // controller.isValidLogin(controller.password)
                      }
                  )
              ),
              const SizedBox(height: 8.0),
              SizedBox(
                height: height * 0.055,
                width: width * 0.9,
                child: OutlinedButton(
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> const MainPage()));
                  },
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 1.0),
                      backgroundColor: Colors.white
                  ),
                  child:const Text(
                    'Sign up',
                    style: TextStyle(
                        color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),),
              ),
              const SizedBox(height: 12.0),
              //#Do you have an account?
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'Do you have already an account?',
                        style: TextStyle(
                            color: Colors.black, fontSize: 15, fontWeight: FontWeight.normal),
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    TextButton(
                        onPressed: (){
                          Navigator.pushNamed(context, SignInPage.id);
                        },
                        child: const Text(
                          'Sign in',
                          style: TextStyle(
                              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),),
            ],
          ),

        ),
      ),
    );
  }
}
