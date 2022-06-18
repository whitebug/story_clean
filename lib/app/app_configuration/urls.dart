import 'package:story_clean/app/app.dart';

/// All required urls
abstract class Urls {
  /// QA proxy url
  static String get qaProxyUrl => '';

  /// Test url
  static String get testUrl => '';

  /// Production url
  static String get prodUrl => '';

  /// Base url.
  static String get baseUrl => AppConfiguration<ConfigurationDetails>.instance().configuration.url;
}
