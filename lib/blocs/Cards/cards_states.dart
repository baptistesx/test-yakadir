import 'package:test_yakadir/models/yakadire_card.dart';

abstract class CardsState {}

class CardsInitialState extends CardsState {}

class CardsLoadingState extends CardsState {}

class CardsFetchedState extends CardsState {
  final List<YakadirCardData> cardsData;

  CardsFetchedState(this.cardsData);
}
