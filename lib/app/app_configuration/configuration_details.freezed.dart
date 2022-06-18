// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'configuration_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConfigurationDetails {
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConfigurationDetailsCopyWith<ConfigurationDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigurationDetailsCopyWith<$Res> {
  factory $ConfigurationDetailsCopyWith(ConfigurationDetails value,
          $Res Function(ConfigurationDetails) then) =
      _$ConfigurationDetailsCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class _$ConfigurationDetailsCopyWithImpl<$Res>
    implements $ConfigurationDetailsCopyWith<$Res> {
  _$ConfigurationDetailsCopyWithImpl(this._value, this._then);

  final ConfigurationDetails _value;
  // ignore: unused_field
  final $Res Function(ConfigurationDetails) _then;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ConfigurationDetailsCopyWith<$Res>
    implements $ConfigurationDetailsCopyWith<$Res> {
  factory _$$_ConfigurationDetailsCopyWith(_$_ConfigurationDetails value,
          $Res Function(_$_ConfigurationDetails) then) =
      __$$_ConfigurationDetailsCopyWithImpl<$Res>;
  @override
  $Res call({String title});
}

/// @nodoc
class __$$_ConfigurationDetailsCopyWithImpl<$Res>
    extends _$ConfigurationDetailsCopyWithImpl<$Res>
    implements _$$_ConfigurationDetailsCopyWith<$Res> {
  __$$_ConfigurationDetailsCopyWithImpl(_$_ConfigurationDetails _value,
      $Res Function(_$_ConfigurationDetails) _then)
      : super(_value, (v) => _then(v as _$_ConfigurationDetails));

  @override
  _$_ConfigurationDetails get _value => super._value as _$_ConfigurationDetails;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_$_ConfigurationDetails(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ConfigurationDetails implements _ConfigurationDetails {
  const _$_ConfigurationDetails({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'ConfigurationDetails(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfigurationDetails &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_ConfigurationDetailsCopyWith<_$_ConfigurationDetails> get copyWith =>
      __$$_ConfigurationDetailsCopyWithImpl<_$_ConfigurationDetails>(
          this, _$identity);
}

abstract class _ConfigurationDetails implements ConfigurationDetails {
  const factory _ConfigurationDetails({required final String title}) =
      _$_ConfigurationDetails;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ConfigurationDetailsCopyWith<_$_ConfigurationDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
