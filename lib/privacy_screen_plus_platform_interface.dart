import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'privacy_screen_plus_method_channel.dart';

abstract class PrivacyScreenPlusPlatform extends PlatformInterface {
  /// Constructs a PrivacyScreenPlusPlatform.
  PrivacyScreenPlusPlatform() : super(token: _token);

  static final Object _token = Object();

  static PrivacyScreenPlusPlatform _instance = MethodChannelPrivacyScreenPlus();

  /// The default instance of [PrivacyScreenPlusPlatform] to use.
  ///
  /// Defaults to [MethodChannelPrivacyScreenPlus].
  static PrivacyScreenPlusPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PrivacyScreenPlusPlatform] when
  /// they register themselves.
  static set instance(PrivacyScreenPlusPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
