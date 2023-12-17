import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/loading/model_progress_hub.dart';
import '../../../bloc/home/home_bloc.dart';
import '../../../bloc/home/home_state.dart';
import '../../../widget/currency_item.dart';

class TaxiPage extends StatefulWidget {
  const TaxiPage({super.key});
  static const String id = 'TaxiPage';
  @override
  State<TaxiPage> createState() => _TaxiPageState();
}

class _TaxiPageState extends State<TaxiPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) => ModalProgressHUD(
          //inAsyncCall: state.status.isLoading,
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.only(bottom: 16),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) => CurrencyWidget(
                    currency: state.currencyList[index],
                  ),
                    childCount: state.currencyList.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
