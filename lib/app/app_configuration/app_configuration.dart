import 'package:flutter/material.dart';
import 'package:story_clean/app/app_configuration/configuration_mode.dart';

/// Provides config to the app. T is a return type of a config
class AppConfiguration<T> implements Listenable {
  AppConfiguration._(this._currentConfigurationMode, T config)
      : _configuration = ValueNotifier(config);

  static AppConfiguration? _instance;
  final ConfigurationMode _currentConfigurationMode;
  ValueNotifier<T> _configuration;

  T get configuration => _configuration.value;

  set configuration(T c) => _configuration.value = c;

  /// Release mode
  bool get isRelease => _currentConfigurationMode == ConfigurationMode.release;

  /// Debug mode
  bool get isDebug => _currentConfigurationMode == ConfigurationMode.debug;

  /// Current configuration mode of an app
  ConfigurationMode get buildType => _currentConfigurationMode;

  factory AppConfiguration.instance() => _instance as AppConfiguration<T>;

  @override
  void addListener(VoidCallback listener) {
    _configuration.addListener(listener);
  }

  @override
  void removeListener(VoidCallback listener) {
    _configuration.removeListener(listener);
  }

  /// Initializing the environment.
  static void init<T>({
    required ConfigurationMode configurationMode,
    required T configuration,
  }) {
    _instance ??= AppConfiguration<T>._(configurationMode, configuration);
  }
}
