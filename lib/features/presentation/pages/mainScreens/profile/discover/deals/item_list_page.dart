import 'package:flutter/material.dart';

import '../../../../../widget/profile/discover/item_list.dart';

class DealsItemListPage extends StatefulWidget {
  const DealsItemListPage({super.key});
  static const String id = 'DealsItemListPage';
  @override
  State<DealsItemListPage> createState() => _DealsItemListPageState();
}

class _DealsItemListPageState extends State<DealsItemListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: false,
        backgroundColor: const Color(0xff003290),
        title: const Text(
          'Bukhara',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
      body:ListView(
        children: [
          itemListDealsNextPage(context),
          itemListDealsNextPage(context),
          itemListDealsNextPage(context),
          itemListDealsNextPage(context),
          itemListDealsNextPage(context),
          itemListDealsNextPage(context),
          itemListDealsNextPage(context),
          itemListDealsNextPage(context),
          itemListDealsNextPage(context),
          itemListDealsNextPage(context),
          itemListDealsNextPage(context),
          itemListDealsNextPage(context),
          itemListDealsNextPage(context),
        ],
      ),
    );
  }
}
