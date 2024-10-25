
import 'privacy_screen_plus_platform_interface.dart';

class PrivacyScreenPlus {
  Future<String?> getPlatformVersion() {
    return PrivacyScreenPlusPlatform.instance.getPlatformVersion();
  }
}
