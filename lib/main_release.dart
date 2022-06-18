import 'package:story_clean/app/app.dart';
import 'package:story_clean/runner.dart';

/// Main entry point of app.
void main() {
  AppConfiguration.init(
    configurationMode: ConfigurationMode.release,
    configuration: ConfigurationDetails(
      url: Urls.prodUrl,
    ),
  );

  runner();
}
