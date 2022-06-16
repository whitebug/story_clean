// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'story_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoryModel _$StoryModelFromJson(Map<String, dynamic> json) {
  return _StoryModel.fromJson(json);
}

/// @nodoc
mixin _$StoryModel {
  String get storyTitle => throw _privateConstructorUsedError;
  String get storyDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoryModelCopyWith<StoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryModelCopyWith<$Res> {
  factory $StoryModelCopyWith(
          StoryModel value, $Res Function(StoryModel) then) =
      _$StoryModelCopyWithImpl<$Res>;
  $Res call({String storyTitle, String storyDescription});
}

/// @nodoc
class _$StoryModelCopyWithImpl<$Res> implements $StoryModelCopyWith<$Res> {
  _$StoryModelCopyWithImpl(this._value, this._then);

  final StoryModel _value;
  // ignore: unused_field
  final $Res Function(StoryModel) _then;

  @override
  $Res call({
    Object? storyTitle = freezed,
    Object? storyDescription = freezed,
  }) {
    return _then(_value.copyWith(
      storyTitle: storyTitle == freezed
          ? _value.storyTitle
          : storyTitle // ignore: cast_nullable_to_non_nullable
              as String,
      storyDescription: storyDescription == freezed
          ? _value.storyDescription
          : storyDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_StoryModelCopyWith<$Res>
    implements $StoryModelCopyWith<$Res> {
  factory _$$_StoryModelCopyWith(
          _$_StoryModel value, $Res Function(_$_StoryModel) then) =
      __$$_StoryModelCopyWithImpl<$Res>;
  @override
  $Res call({String storyTitle, String storyDescription});
}

/// @nodoc
class __$$_StoryModelCopyWithImpl<$Res> extends _$StoryModelCopyWithImpl<$Res>
    implements _$$_StoryModelCopyWith<$Res> {
  __$$_StoryModelCopyWithImpl(
      _$_StoryModel _value, $Res Function(_$_StoryModel) _then)
      : super(_value, (v) => _then(v as _$_StoryModel));

  @override
  _$_StoryModel get _value => super._value as _$_StoryModel;

  @override
  $Res call({
    Object? storyTitle = freezed,
    Object? storyDescription = freezed,
  }) {
    return _then(_$_StoryModel(
      storyTitle: storyTitle == freezed
          ? _value.storyTitle
          : storyTitle // ignore: cast_nullable_to_non_nullable
              as String,
      storyDescription: storyDescription == freezed
          ? _value.storyDescription
          : storyDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoryModel implements _StoryModel {
  const _$_StoryModel(
      {required this.storyTitle, required this.storyDescription});

  factory _$_StoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_StoryModelFromJson(json);

  @override
  final String storyTitle;
  @override
  final String storyDescription;

  @override
  String toString() {
    return 'StoryModel(storyTitle: $storyTitle, storyDescription: $storyDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoryModel &&
            const DeepCollectionEquality()
                .equals(other.storyTitle, storyTitle) &&
            const DeepCollectionEquality()
                .equals(other.storyDescription, storyDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(storyTitle),
      const DeepCollectionEquality().hash(storyDescription));

  @JsonKey(ignore: true)
  @override
  _$$_StoryModelCopyWith<_$_StoryModel> get copyWith =>
      __$$_StoryModelCopyWithImpl<_$_StoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoryModelToJson(this);
  }
}

abstract class _StoryModel implements StoryModel {
  const factory _StoryModel(
      {required final String storyTitle,
      required final String storyDescription}) = _$_StoryModel;

  factory _StoryModel.fromJson(Map<String, dynamic> json) =
      _$_StoryModel.fromJson;

  @override
  String get storyTitle => throw _privateConstructorUsedError;
  @override
  String get storyDescription => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_StoryModelCopyWith<_$_StoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
