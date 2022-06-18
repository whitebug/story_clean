import 'package:freezed_annotation/freezed_annotation.dart';

part 'configuration_details.freezed.dart';

/// Configuration details
@freezed
class ConfigurationDetails with _$ConfigurationDetails{
  const factory ConfigurationDetails({required String url}) = _ConfigurationDetails;
}