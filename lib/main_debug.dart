import 'package:story_clean/app/app.dart';
import 'package:story_clean/runner.dart';

void main() {
  AppConfiguration.init(
    configurationMode: ConfigurationMode.debug,
    configuration: ConfigurationDetails(
      url: Urls.testUrl,
    ),
  );

  runner();
}