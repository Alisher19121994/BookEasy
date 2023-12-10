import 'package:bloc/bloc.dart';

import '../../../domain/usecase/home/home_usecase.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  HomeBloc({required this.currencyUsCase}) : super(const HomeState()) {
    on<FetchCurrencyEvent>(_currencyGetData);
  }

  final CurrencyUseCase currencyUsCase;

  Future<void> _currencyGetData(FetchCurrencyEvent event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: CurrencyStatus.loading));

    final result = await currencyUsCase(CurrencyParams());

    result.fold((error) {
        emit(state.copyWith(status: CurrencyStatus.error,));
      },


      (result) {
        emit(state.copyWith(currencyList: result, status: CurrencyStatus.success,));
      },
    );
  }
}
