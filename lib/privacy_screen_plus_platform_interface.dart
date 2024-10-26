import 'dart:ui' show Color;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:privacy_screen_plus/helpers.dart';
import 'package:privacy_screen_plus/privacy_screen_plus_method_channel.dart';

abstract class PrivacyScreenPlusPlatform extends PlatformInterface {
  /// Constructs a PrivacyScreenPlusPlatform.
  PrivacyScreenPlusPlatform() : super(token: _token);

  static final Object _token = Object();

  static PrivacyScreenPlusPlatform _instance = MethodChannelPrivacyScreenPlus();

  /// The default instance of [MethodChannelPrivacyScreenPlus] to use.
  ///
  /// Defaults to [MethodChannelPrivacyScreenPlus].
  static PrivacyScreenPlusPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MethodChannelPrivacyScreenPlus] when
  /// they register themselves.
  static set instance(PrivacyScreenPlusPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool?> updateConfig({
    required PrivacyIosOptions iosOptions,
    required PrivacyAndroidOptions androidOptions,
    required Color backgroundColor,
    required PrivacyBlurEffect blurEffect,
  }) {
    throw UnimplementedError('updateConfig() has not been implemented.');
  }
}
