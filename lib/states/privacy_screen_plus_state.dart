import 'dart:ui' show Color;

import 'package:flutter/foundation.dart';
import 'package:privacy_screen_plus/helpers.dart';

@immutable
class PrivacyScreenPlusState {
  const PrivacyScreenPlusState({
    this.iosOptions = const PrivacyIosOptions(),
    this.androidOptions = const PrivacyAndroidOptions(),
    this.blurEffect = PrivacyBlurEffect.extraLight,
    this.backgroundColor = const Color(0xFFFFFFFF),
  });

  final PrivacyIosOptions iosOptions;
  final PrivacyAndroidOptions androidOptions;
  final PrivacyBlurEffect blurEffect;
  final Color backgroundColor;

  PrivacyScreenPlusState copyWith({
    bool? shouldLock,
    PrivacyIosOptions? iosOptions,
    PrivacyAndroidOptions? androidOptions,
    PrivacyBlurEffect? blurEffect,
    Color? backgroundColor,
  }) {
    return PrivacyScreenPlusState(
      androidOptions: androidOptions ?? this.androidOptions,
      iosOptions: iosOptions ?? this.iosOptions,
      blurEffect: blurEffect ?? this.blurEffect,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }
}
