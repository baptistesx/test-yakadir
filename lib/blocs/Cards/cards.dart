import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_yakadir/repositories/cards/cards.dart';

import 'cards_events.dart';
import 'cards_events.dart';
import 'cards_states.dart';

class CardsBloc extends Bloc<CardsEvent, CardsState> {
  final CardsRepository cardsRepository;

  /// We can pass an initial state to allow use to manually fetching setting during launch
  CardsBloc(
    this.cardsRepository, {
    CardsState? initialState,
  }) : super(initialState ?? CardsInitialState()) {
    on<GetCardsEvent>(getCards);
  }

  Future<void> getCards(
    GetCardsEvent event,
    Emitter<CardsState> emit,
  ) async {
    emit(CardsLoadingState());
    await cardsRepository.getCards();
  }
}
