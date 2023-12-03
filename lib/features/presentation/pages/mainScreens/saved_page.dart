import 'package:booking_uz/features/presentation/pages/mainScreens/savedPlusPage/saved_plus_page.dart';
import 'package:flutter/material.dart';
import '../../../../constants/image/local_images.dart';
import '../../widget/saved/saved_plus_data.dart';

class SavedPage extends StatefulWidget {
  const SavedPage({super.key});
  static const String id = 'SavedPage';
  @override
  State<SavedPage> createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {

  var isThereData = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff003290),
        title: const Text('Saved', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, SavedPlusPage.id);
            },
            icon: const Icon(Icons.add,color: Colors.white,size: 30.0,),
          ),

        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 6.0,right: 6.0),
        child: isThereData ? Column(
            children: [
              Container(
                  margin: const EdgeInsets.all(24.0),
                  padding: const EdgeInsets.all(18.0),
                height: height * 0.23,
                width: double.infinity,
                child: const Center(
                  child: Image(image: AssetImage(LocalImages.hotelSaved)))
              ),
              const SizedBox(height: 30.0),
              Column(
                children: [
                  SizedBox(
                      height: height * 0.04,
                      width: double.infinity,
                      child: const Center(
                          child: Text('Save What you like for later',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24),))
                  ),
                  // const SizedBox(height: 18.0),
                  SizedBox(
                      height: height * 0.08,
                      width: double.infinity,
                      child: const Center(
                          child: Text('Create lists of your favorite properties to help you share, compare and book',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 18),))
                  ),
                ],
              ),
            ],
          ) :
          ListView(
              children: [
                savedDataListItem(context),
                savedDataListItem(context),
                savedDataListItem(context),
                savedDataListItem(context),
                savedDataListItem(context),
                savedDataListItem(context),
                savedDataListItem(context),
                savedDataListItem(context),
                savedDataListItem(context),
                savedDataListItem(context),
                savedDataListItem(context),
                savedDataListItem(context),
                savedDataListItem(context),
                savedDataListItem(context),
                savedDataListItem(context),
                savedDataListItem(context),
                savedDataListItem(context),
              ],
            ),


      ),
    );
  }
}
