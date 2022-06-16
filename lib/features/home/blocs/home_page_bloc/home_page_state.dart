part of 'home_page_bloc.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState.loading() = HomePageLoadingState;
  const factory HomePageState.error({required String error}) = HomePageErrorState;
  const factory HomePageState.success({required List<CardEntity> cards}) = HomePageSuccessState;
}
