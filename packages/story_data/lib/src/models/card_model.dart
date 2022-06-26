import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:story_domain/story_domain.dart';

part 'card_model.freezed.dart';
part 'card_model.g.dart';

@freezed
class CardModel extends CardEntity with _$CardModel {
  const factory CardModel({
    required int points,
    int? colorIndex,
  }) = _CardModel;

  factory CardModel.fromJson(Map<String, Object?> json) => _$CardModelFromJson(json);

  static List<CardModel> fromJsonToList(dynamic data) {
    return (data as List).map((e) => CardModel.fromJson(e as Map<String, dynamic>)).toList(growable: false);
  }

  factory CardModel.fromEntity(CardEntity entity) {
    return CardModel(
      points: entity.points,
      colorIndex: entity.colorIndex,
    );
  }
}
