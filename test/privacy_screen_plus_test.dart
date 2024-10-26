import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:privacy_screen_plus/helpers.dart';
import 'package:privacy_screen_plus/privacy_screen_plus_method_channel.dart';
import 'package:privacy_screen_plus/privacy_screen_plus_platform_interface.dart';

class MockPrivacyScreenPlusPlatform
    with MockPlatformInterfaceMixin
    implements PrivacyScreenPlusPlatform {
  @override
  Future<bool?> updateConfig({
    required PrivacyIosOptions iosOptions,
    required PrivacyAndroidOptions androidOptions,
    required Color backgroundColor,
    required PrivacyBlurEffect blurEffect,
  }) {
    // TODO: implement updateConfig
    throw UnimplementedError();
  }
}

void main() {
  final initialPlatform = PrivacyScreenPlusPlatform.instance;

  test('$MethodChannelPrivacyScreenPlus is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPrivacyScreenPlus>());
  });
}
