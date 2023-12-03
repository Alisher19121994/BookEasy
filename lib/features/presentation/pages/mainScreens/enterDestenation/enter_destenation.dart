import 'package:flutter/material.dart';

class EnterDestination extends StatefulWidget {
  const EnterDestination({super.key});
  static const String id = 'EnterDestination';
  @override
  State<EnterDestination> createState() => _EnterDestinationState();
}

class _EnterDestinationState extends State<EnterDestination> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: formKey,
        child: Container(
          margin: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const SizedBox(height: 50,),
              SizedBox(
                height: height * 0.080,
                child: TextFormField(
                   // controller: controller.controllerUsername,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.black,
                        ),
                        labelText: 'Enter destination',
                        border: OutlineInputBorder()),
                        onChanged: (value) =>{
                    }
                ),
              ),
              Expanded(child: ListView(
                children: [
                  Text('jjsdjsjhjdhjshdjhjshjjsjd',style: TextStyle(color: Colors.black,fontSize: 20),),
                  const SizedBox(height: 5,),
                  Text('jjsdjsjhjdhjshdjhjshjjsjd',style: TextStyle(color: Colors.black,fontSize: 20),),
                  const SizedBox(height: 5,),
                  Text('jjsdjsjhjdhjshdjhjshjjsjd',style: TextStyle(color: Colors.black,fontSize: 20),),
                  const SizedBox(height: 5,),
                  Text('jjsdjsjhjdhjshdjhjshjjsjd',style: TextStyle(color: Colors.black,fontSize: 20),),
                  const SizedBox(height: 5,),
                  Text('jjsdjsjhjdhjshdjhjshjjsjd',style: TextStyle(color: Colors.black,fontSize: 20),),
                  const SizedBox(height: 5,),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
