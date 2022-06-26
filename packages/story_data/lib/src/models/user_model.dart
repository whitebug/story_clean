import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:story_domain/story_domain.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

const String userKey = 'userKey';

@freezed
class UserModel extends UserEntity with _$UserModel {
  const factory UserModel({
    String? userName,
    String? userEmail,
    String? userAvatar,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) => _$UserModelFromJson(json);

  static List<UserModel> fromJsonToList(dynamic data) {
    return (data as List).map((e) => UserModel.fromJson(e as Map<String, dynamic>)).toList(growable: false);
  }

  factory UserModel.fromEntity(UserEntity entity) {
    return UserModel(
      userName: entity.userName,
      userEmail: entity.userEmail,
      userAvatar: entity.userAvatar,
    );
  }
}