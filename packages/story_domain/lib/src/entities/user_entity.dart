/// Data for a user. Contains name
class UserEntity {
  /// Username
  final String userName;

  /// Potential avatar
  final String? userAvatar;

  const UserEntity({
    required this.userName,
    required this.userAvatar,
  });
}
