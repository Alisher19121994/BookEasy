import 'package:booking_uz/features/presentation/bloc/home/home_bloc.dart';
import 'package:booking_uz/features/presentation/bloc/home/home_state.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/constants/image/local_images.dart';
import '../../../../../core/loading/model_progress_hub.dart';
import '../../../widget/currency_item.dart';
import '../../../widget/home/more_for_you_list_item.dart';
import '../../../widget/home/more_for_you_list_item_title.dart';
import '../../../widget/home/travel_more_list_item.dart';
import '../enterDestenation/enter_destenation.dart';

class StaysPage extends StatefulWidget {
  const StaysPage({super.key});
  static const String id = 'StaysPage';
  @override
  State<StaysPage> createState() => _StaysPageState();
}

class _StaysPageState extends State<StaysPage> {

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
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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

                      await _travelMoreList.add({
                        'discountTitle': discount, 'title':title
                      });
                      discountTitleController.text = '';
                      titleController.text = '';

                    },
                    child: Text('Press'))
              ],
            ),
          );
        }, context: context);
  }

  final CollectionReference _travelMoreList =
  FirebaseFirestore.instance.collection('TravelMoreList');

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      // body: BlocBuilder<HomeBloc, HomeState>(
      //   builder: (context, state) => ModalProgressHUD(
      //     //inAsyncCall: state.status.isLoading,
      //     child: CustomScrollView(
      //       slivers: [
      //         SliverPadding(
      //           padding: const EdgeInsets.only(bottom: 16),
      //           sliver: SliverList(
      //             delegate: SliverChildBuilderDelegate((context, index) => CurrencyWidget(
      //                 currency: state.currencyList[index],
      //               ),
      //               childCount: state.currencyList.length,
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      /***/
      // body: BlocBuilder<HomeBloc,HomeState>(
      //   builder: (context, state){
      //     if (state is CurrencyStatus.loading) {
      //       return const Center(child: CupertinoActivityIndicator());
      //     }
      //     if (state is RemoteArticlesError) {
      //       return const Center(child: Icon(Icons.refresh));
      //     }
      //     if (state is RemoteArticlesDone) {
      //       return ListView.builder(
      //         itemBuilder: (context,index){
      //           return ArticleWidget(
      //             article: state.articles![index] ,
      //             onArticlePressed: (article) => _onArticlePressed(context,article),
      //           );
      //         },
      //         itemCount: state.articles!.length,
      //       );
      //     }
      //     return const SizedBox();
      //   },
      // ),
      /***/
      body: Container(
        margin: const EdgeInsets.only(left: 7.0,right: 7.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 16.0),
              //#rounded corner details and search
              Container(
                height: height * 0.2,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(width: 2.0,color: const Color(0xfffeba02))
                ),
                child: Column(
                  children: [
                    //#Enter your destination
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, EnterDestination.id);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        height: height * 0.050,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1.0,color: const Color(0xfffeba02))
                        ),
                        child: const Row(
                          children: [
                            Icon(Icons.search),
                            SizedBox(width: 10.0),
                            Text('Enter your destination',style: TextStyle(color: Colors.black54,fontSize: 16),),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      height: height * 0.050,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1.0,color: const Color(0xfffeba02))
                      ),),
                    Container(
                      height: height * 0.050,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1.0,color: const Color(0xfffeba02))
                      ),),
                    //#Search
                    Container(
                      height: height * 0.045,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(bottomRight: Radius.circular(8.0),bottomLeft: Radius.circular(8.0)),
                          color: Colors.blue,
                          border: Border.all(width: 1.0,color: const Color(0xfffeba02))
                      ),
                      child: const Center(child: Text('Search',style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.normal),),),),

                  ],
                ),
              ),
              //# rounded corner for admobs
              const SizedBox(height: 16.0),
              Container(
                padding: const EdgeInsets.all(14.0),
                height: height * 0.45,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color(0xfff2f6fa)
                ),
                child: Center(child: Text('Ads mob')),
              ),
              const SizedBox(height: 24.0),
              //#travel more, spend less
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Travel more, spend less',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
                  Container(
                      padding: const EdgeInsets.all(2.0),
                      height: height * 0.20,
                      width:  double.infinity,
                      // child: ListView(
                      //   scrollDirection: Axis.horizontal,
                      //   children: [
                      //     travelMoreListItem(context),
                      //   ],
                      // )
                    child: StreamBuilder(
                      stream: _travelMoreList.snapshots(),
                      builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapShot){
                        if(streamSnapShot.hasData){
                          return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: streamSnapShot.data!.docs.length,
                            itemBuilder: (context, index){
                              final DocumentSnapshot documentSnapshot = streamSnapShot.data!.docs[index];
                              return travelMoreListItem(context,documentSnapshot);
                            },
                          );
                        }
                        return const Center(child: CircularProgressIndicator());
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              //#Explore deals
              Container(
                height: height * 0.30,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color(0xfff2f6fa)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(14.0),
                      width: width * 0.60,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('15% discount',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                              SizedBox(height: 8.0),
                              Text('Enjoy discounts at participants properties worldwide',style:
                              TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal),),
                            ],
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue
                            ),
                            onPressed: (){},
                            child:Text('Explore deals',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),

                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(8.0),bottomRight: Radius.circular(8.0)),
                            image: DecorationImage(
                                image: AssetImage(LocalImages.hotel),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    )
                  ],
                ),),
              const SizedBox(height: 16.0),
              //#more for you and list items
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text('More for you',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 6.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      moreForYouListItem(context),
                      moreForYouListItemTitle(context)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      moreForYouListItemTitle(context),
                      moreForYouListItem(context),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      moreForYouListItem(context),
                      moreForYouListItemTitle(context)
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30.0),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
           onPressed: () {
             showData();
           },

),
    );
  }
}
