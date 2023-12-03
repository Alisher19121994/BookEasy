import 'package:flutter/material.dart';

class SavedPlusPage extends StatefulWidget {
  const SavedPlusPage({super.key});
  static const String id = 'SavedPlusPage';
  @override
  State<SavedPlusPage> createState() => _SavedPlusPageState();
}

class _SavedPlusPageState extends State<SavedPlusPage> {
  final formKey = GlobalKey<FormState>();
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
          'New list',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal),
        ),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 50.0,left: 12.0,right: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
              child: Text(
                'List name',
                style: TextStyle(
                    color: Colors.black, fontSize: 18, fontWeight: FontWeight.normal),
              ),),
                const SizedBox(height: 12.0),
                SizedBox(
                  height: height * 0.080,
                  child: TextFormField(
                    minLines: 1,
                    maxLines: 10,
                    keyboardType:TextInputType.multiline,
                    // controller: controller.controllerUsername,
                      style: const TextStyle(color: Colors.black),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder()),
                      onChanged: (value) =>{

                      }
                  ),
                ),
                const SizedBox(height: 40.0),
                Center(
                  child: SizedBox(
                    height: height * 0.055,
                    width: width * 0.80,
                    child: ElevatedButton(
                        onPressed: (){


                        },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:  Colors.blueAccent
                      ),
                        child:const Text(
                          'Create',
                          style: TextStyle(
                              color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),),
                  ),
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}
