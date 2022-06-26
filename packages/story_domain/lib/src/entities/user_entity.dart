/// Data for a user. Contains name
class UserEntity {
  /// Username
  final String? userName;

  /// Email
  final String? userEmail;

  /// Potential avatar
  final String? userAvatar;

  const UserEntity({
    this.userName,
    this.userEmail,
    this.userAvatar,
  });
}
