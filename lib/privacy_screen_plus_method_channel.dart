import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:privacy_screen_plus/helpers.dart';
import 'package:privacy_screen_plus/privacy_screen_plus_platform_interface.dart';

/// An implementation of [PrivacyScreenPlusPlatform] that uses method channels.
class MethodChannelPrivacyScreenPlus extends PrivacyScreenPlusPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('privacy_screen_plus');

  @override
  Future<bool?> updateConfig({
    required PrivacyIosOptions iosOptions,
    required PrivacyAndroidOptions androidOptions,
    required Color backgroundColor,
    required PrivacyBlurEffect blurEffect,
  }) {
    final backgroundOpacity = backgroundColor.opacity;
    final backgroundColorSolid = backgroundColor.withOpacity(1);

    return methodChannel.invokeMethod<bool>(
      'updateConfig',
      {
        'iosLockWithDidEnterBackground':
            iosOptions.lockTrigger == IosLockTrigger.didEnterBackground,
        'privacyImageName': iosOptions.privacyImageName,
        'blurEffect': blurEffect.name,
        'backgroundColor':
            '#${backgroundColorSolid.value.toRadixString(16).substring(2, 8)}',
        'backgroundOpacity': backgroundOpacity,
        'enablePrivacyIos': iosOptions.enablePrivacy,
        'autoLockAfterSecondsIos': iosOptions.autoLockAfterSeconds,
        'enableSecureAndroid': androidOptions.enableSecure,
        'autoLockAfterSecondsAndroid': androidOptions.autoLockAfterSeconds,
      },
    );
  }
}
