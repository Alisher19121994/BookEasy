import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

Widget travelMoreListItem(BuildContext context,DocumentSnapshot documentSnapshot) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;

  final CollectionReference _travelMoreList =
  FirebaseFirestore.instance.collection('TravelMoreList');

  TextEditingController discountTitleController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  Future<void> showData([DocumentSnapshot? documentSnapshot])async{
    if(documentSnapshot != null){
      discountTitleController.text = documentSnapshot['discountTitle'];
      titleController.text = documentSnapshot['title'];
    }
    await showModalBottomSheet(
        isScrollControlled: true,
        builder: (context){
          return Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  TextFormField(
                    controller: discountTitleController,
                    decoration: InputDecoration(
                        label: Text('discountTitle')
                    ),
                  ),
                  TextFormField(
                    controller: titleController,
                    decoration: InputDecoration(
                        label: Text('Title')
                    ),
                  ),

                  ElevatedButton(
                      onPressed: ()async{
                        String discount = discountTitleController.text;
                        String title = titleController.text;

                        await _travelMoreList.doc(documentSnapshot!.id).update({
                          'discountTitle': discount, 'title':title
                        });
                        discountTitleController.text = '';
                        titleController.text = '';

                      },
                      child: Text('Press'))
                ],
              ),
            ),
          );
        }, context: context);
  }

  Future<void> delete(String productId)async{
       await _travelMoreList.doc(productId).delete();

       ScaffoldMessenger.of(context).showSnackBar(
           SnackBar(
             backgroundColor: Colors.greenAccent,
           content: Text('Deleted successfully')));
  }

  return Container(
    margin: const EdgeInsets.all(6.0),
    padding: const EdgeInsets.all(12.0),
    height: height * 0.16,
    width: width * 0.55,
    decoration: BoxDecoration(
      border: Border.all(width: 1.2, color: Colors.blue),
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            IconButton(
                onPressed: (){
                  showData(documentSnapshot);
                },
                icon:Icon( Icons.edit)),
            IconButton(
                onPressed: (){
                  delete(documentSnapshot.id);
                },
                icon:const Icon( Icons.delete)),
          ],
        ),
        Text(documentSnapshot['discountTitle'],style: const TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
        const SizedBox(height: 8.0),
        Expanded(child: Text(documentSnapshot['title'],style: const TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal),))
      ],
    ),
  );
}

