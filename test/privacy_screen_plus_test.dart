import 'package:flutter_test/flutter_test.dart';
import 'package:privacy_screen_plus/privacy_screen_plus.dart';
import 'package:privacy_screen_plus/privacy_screen_plus_platform_interface.dart';
import 'package:privacy_screen_plus/privacy_screen_plus_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPrivacyScreenPlusPlatform
    with MockPlatformInterfaceMixin
    implements PrivacyScreenPlusPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PrivacyScreenPlusPlatform initialPlatform = PrivacyScreenPlusPlatform.instance;

  test('$MethodChannelPrivacyScreenPlus is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPrivacyScreenPlus>());
  });

  test('getPlatformVersion', () async {
    PrivacyScreenPlus privacyScreenPlusPlugin = PrivacyScreenPlus();
    MockPrivacyScreenPlusPlatform fakePlatform = MockPrivacyScreenPlusPlatform();
    PrivacyScreenPlusPlatform.instance = fakePlatform;

    expect(await privacyScreenPlusPlugin.getPlatformVersion(), '42');
  });
}
