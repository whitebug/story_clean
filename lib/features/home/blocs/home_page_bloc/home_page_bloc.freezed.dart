// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomePageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCards,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadCards,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCards,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomePageLoadCardsEvent value) loadCards,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomePageLoadCardsEvent value)? loadCards,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomePageLoadCardsEvent value)? loadCards,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageEventCopyWith<$Res> {
  factory $HomePageEventCopyWith(
          HomePageEvent value, $Res Function(HomePageEvent) then) =
      _$HomePageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomePageEventCopyWithImpl<$Res>
    implements $HomePageEventCopyWith<$Res> {
  _$HomePageEventCopyWithImpl(this._value, this._then);

  final HomePageEvent _value;
  // ignore: unused_field
  final $Res Function(HomePageEvent) _then;
}

/// @nodoc
abstract class _$$_HomePageLoadCardsEventCopyWith<$Res> {
  factory _$$_HomePageLoadCardsEventCopyWith(_$_HomePageLoadCardsEvent value,
          $Res Function(_$_HomePageLoadCardsEvent) then) =
      __$$_HomePageLoadCardsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomePageLoadCardsEventCopyWithImpl<$Res>
    extends _$HomePageEventCopyWithImpl<$Res>
    implements _$$_HomePageLoadCardsEventCopyWith<$Res> {
  __$$_HomePageLoadCardsEventCopyWithImpl(_$_HomePageLoadCardsEvent _value,
      $Res Function(_$_HomePageLoadCardsEvent) _then)
      : super(_value, (v) => _then(v as _$_HomePageLoadCardsEvent));

  @override
  _$_HomePageLoadCardsEvent get _value =>
      super._value as _$_HomePageLoadCardsEvent;
}

/// @nodoc

class _$_HomePageLoadCardsEvent implements _HomePageLoadCardsEvent {
  const _$_HomePageLoadCardsEvent();

  @override
  String toString() {
    return 'HomePageEvent.loadCards()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomePageLoadCardsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCards,
  }) {
    return loadCards();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadCards,
  }) {
    return loadCards?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCards,
    required TResult orElse(),
  }) {
    if (loadCards != null) {
      return loadCards();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomePageLoadCardsEvent value) loadCards,
  }) {
    return loadCards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomePageLoadCardsEvent value)? loadCards,
  }) {
    return loadCards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomePageLoadCardsEvent value)? loadCards,
    required TResult orElse(),
  }) {
    if (loadCards != null) {
      return loadCards(this);
    }
    return orElse();
  }
}

abstract class _HomePageLoadCardsEvent implements HomePageEvent {
  const factory _HomePageLoadCardsEvent() = _$_HomePageLoadCardsEvent;
}

/// @nodoc
mixin _$HomePageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<CardEntity> cards) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<CardEntity> cards)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<CardEntity> cards)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePageLoadingState value) loading,
    required TResult Function(HomePageErrorState value) error,
    required TResult Function(HomePageSuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomePageLoadingState value)? loading,
    TResult Function(HomePageErrorState value)? error,
    TResult Function(HomePageSuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageLoadingState value)? loading,
    TResult Function(HomePageErrorState value)? error,
    TResult Function(HomePageSuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  final HomePageState _value;
  // ignore: unused_field
  final $Res Function(HomePageState) _then;
}

/// @nodoc
abstract class _$$HomePageLoadingStateCopyWith<$Res> {
  factory _$$HomePageLoadingStateCopyWith(_$HomePageLoadingState value,
          $Res Function(_$HomePageLoadingState) then) =
      __$$HomePageLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomePageLoadingStateCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res>
    implements _$$HomePageLoadingStateCopyWith<$Res> {
  __$$HomePageLoadingStateCopyWithImpl(_$HomePageLoadingState _value,
      $Res Function(_$HomePageLoadingState) _then)
      : super(_value, (v) => _then(v as _$HomePageLoadingState));

  @override
  _$HomePageLoadingState get _value => super._value as _$HomePageLoadingState;
}

/// @nodoc

class _$HomePageLoadingState implements HomePageLoadingState {
  const _$HomePageLoadingState();

  @override
  String toString() {
    return 'HomePageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomePageLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<CardEntity> cards) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<CardEntity> cards)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<CardEntity> cards)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePageLoadingState value) loading,
    required TResult Function(HomePageErrorState value) error,
    required TResult Function(HomePageSuccessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomePageLoadingState value)? loading,
    TResult Function(HomePageErrorState value)? error,
    TResult Function(HomePageSuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageLoadingState value)? loading,
    TResult Function(HomePageErrorState value)? error,
    TResult Function(HomePageSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomePageLoadingState implements HomePageState {
  const factory HomePageLoadingState() = _$HomePageLoadingState;
}

/// @nodoc
abstract class _$$HomePageErrorStateCopyWith<$Res> {
  factory _$$HomePageErrorStateCopyWith(_$HomePageErrorState value,
          $Res Function(_$HomePageErrorState) then) =
      __$$HomePageErrorStateCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$HomePageErrorStateCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res>
    implements _$$HomePageErrorStateCopyWith<$Res> {
  __$$HomePageErrorStateCopyWithImpl(
      _$HomePageErrorState _value, $Res Function(_$HomePageErrorState) _then)
      : super(_value, (v) => _then(v as _$HomePageErrorState));

  @override
  _$HomePageErrorState get _value => super._value as _$HomePageErrorState;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$HomePageErrorState(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomePageErrorState implements HomePageErrorState {
  const _$HomePageErrorState({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'HomePageState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageErrorState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$HomePageErrorStateCopyWith<_$HomePageErrorState> get copyWith =>
      __$$HomePageErrorStateCopyWithImpl<_$HomePageErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<CardEntity> cards) success,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<CardEntity> cards)? success,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<CardEntity> cards)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePageLoadingState value) loading,
    required TResult Function(HomePageErrorState value) error,
    required TResult Function(HomePageSuccessState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomePageLoadingState value)? loading,
    TResult Function(HomePageErrorState value)? error,
    TResult Function(HomePageSuccessState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageLoadingState value)? loading,
    TResult Function(HomePageErrorState value)? error,
    TResult Function(HomePageSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HomePageErrorState implements HomePageState {
  const factory HomePageErrorState({required final String error}) =
      _$HomePageErrorState;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$HomePageErrorStateCopyWith<_$HomePageErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomePageSuccessStateCopyWith<$Res> {
  factory _$$HomePageSuccessStateCopyWith(_$HomePageSuccessState value,
          $Res Function(_$HomePageSuccessState) then) =
      __$$HomePageSuccessStateCopyWithImpl<$Res>;
  $Res call({List<CardEntity> cards});
}

/// @nodoc
class __$$HomePageSuccessStateCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res>
    implements _$$HomePageSuccessStateCopyWith<$Res> {
  __$$HomePageSuccessStateCopyWithImpl(_$HomePageSuccessState _value,
      $Res Function(_$HomePageSuccessState) _then)
      : super(_value, (v) => _then(v as _$HomePageSuccessState));

  @override
  _$HomePageSuccessState get _value => super._value as _$HomePageSuccessState;

  @override
  $Res call({
    Object? cards = freezed,
  }) {
    return _then(_$HomePageSuccessState(
      cards: cards == freezed
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardEntity>,
    ));
  }
}

/// @nodoc

class _$HomePageSuccessState implements HomePageSuccessState {
  const _$HomePageSuccessState({required final List<CardEntity> cards})
      : _cards = cards;

  final List<CardEntity> _cards;
  @override
  List<CardEntity> get cards {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  String toString() {
    return 'HomePageState.success(cards: $cards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageSuccessState &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cards));

  @JsonKey(ignore: true)
  @override
  _$$HomePageSuccessStateCopyWith<_$HomePageSuccessState> get copyWith =>
      __$$HomePageSuccessStateCopyWithImpl<_$HomePageSuccessState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<CardEntity> cards) success,
  }) {
    return success(cards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<CardEntity> cards)? success,
  }) {
    return success?.call(cards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<CardEntity> cards)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(cards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePageLoadingState value) loading,
    required TResult Function(HomePageErrorState value) error,
    required TResult Function(HomePageSuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomePageLoadingState value)? loading,
    TResult Function(HomePageErrorState value)? error,
    TResult Function(HomePageSuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageLoadingState value)? loading,
    TResult Function(HomePageErrorState value)? error,
    TResult Function(HomePageSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class HomePageSuccessState implements HomePageState {
  const factory HomePageSuccessState({required final List<CardEntity> cards}) =
      _$HomePageSuccessState;

  List<CardEntity> get cards => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$HomePageSuccessStateCopyWith<_$HomePageSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}
