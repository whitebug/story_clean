import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:story_domain/story_domain.dart';

part 'story_model.freezed.dart';
part 'story_model.g.dart';

@freezed
class StoryModel extends StoryEntity with _$StoryModel {
  const factory StoryModel({
    required String storyTitle,
    required String storyDescription,
  }) = _StoryModel;

  factory StoryModel.fromJson(Map<String, Object?> json) => _$StoryModelFromJson(json);

  static List<StoryModel> fromJsonToList(dynamic data) {
    return (data as List).map((e) => StoryModel.fromJson(e as Map<String, dynamic>)).toList(growable: false);
  }

  factory StoryModel.fromEntity(StoryEntity entity) {
    return StoryModel(
      storyTitle: entity.storyTitle,
      storyDescription: entity.storyDescription,
    );
  }
}
