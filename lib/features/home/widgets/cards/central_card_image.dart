import 'package:flutter/material.dart';
import 'package:story_clean/features/home/widgets/cards/cards.dart';

/// Returns diamonds (0), hearts (1), spades (2) or clubs (3) based on
/// [cardColorIndex] (in brackets)
/// Size of the image is determined by [imageSide] parameter
class CardImage extends StatelessWidget {
  const CardImage({
    required this.cardColorIndex,
    required this.imageSide,
    Key? key,
  }) : super(key: key);

  /// Index for colors
  final int cardColorIndex;

  final double imageSide;

  @override
  Widget build(BuildContext context) {
    switch (cardColorIndex) {
      case 0:
        return CustomPaint(
          size: Size(imageSide, imageSide),
          painter: DiamondsPainter(),
        );
      case 1:
        return CustomPaint(
          size: Size(imageSide, imageSide),
          painter: HeartsPainter(),
        );
      case 2:
        return CustomPaint(
          size: Size(imageSide, imageSide),
          painter: SpadesPainter(),
        );
      case 3:
        return CustomPaint(
          size: Size(imageSide, imageSide),
          painter: ClubsPainter(),
        );
      default:
        return CustomPaint(
          size: Size(imageSide, imageSide),
          painter: DiamondsPainter(),
        );
    }
  }
}
