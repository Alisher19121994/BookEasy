import 'package:flutter/material.dart';

class RenameSavedPage extends StatefulWidget {
  const RenameSavedPage({super.key});
  static const String id = 'RenameSavedPage';

  @override
  State<RenameSavedPage> createState() => _RenameSavedPageState();
}

class _RenameSavedPageState extends State<RenameSavedPage> {

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 50.0,left: 12.0,right: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 35.0),
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.clear,size: 30.0,color: Colors.black,),),
                const SizedBox(height: 15.0),
                const SizedBox(
                  child: Text(
                    'Rename list',
                    style: TextStyle(
                        color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
                  ),),
                const SizedBox(height: 40.0),
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
                        'OK',
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
