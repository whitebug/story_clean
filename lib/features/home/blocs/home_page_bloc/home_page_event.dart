part of 'home_page_bloc.dart';

@freezed
class HomePageEvent with _$HomePageEvent {
  const factory HomePageEvent.loadCards() = _HomePageLoadCardsEvent;
  const factory HomePageEvent.chooseCard({
    required CardEntity card,
  }) = _HomePageChooseCardEvent;
}
