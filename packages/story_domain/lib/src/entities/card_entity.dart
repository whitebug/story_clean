/// Data for a card. How much [points] a user
/// provide for specific story.
class CardEntity {
  /// Number of points
  final int points;

  /// Potential image of a card
  final String? image;

  const CardEntity({
    required this.points,
    this.image,
  });
}
