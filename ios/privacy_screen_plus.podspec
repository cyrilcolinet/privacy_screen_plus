#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint privacy_screen_plus.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'privacy_screen_plus'
  s.version          = '1.0.0'
  s.summary          = 'A plugin for hiding sensitive data when app is in app switcher and in background.'
  s.description      = <<-DESC
A plugin for hiding sensitive data when app is in app switcher and in background.
It also provides automatic lock triggers with native lifeCycle listeners.
                       DESC
  s.homepage         = 'https://cyrilcolinet.xyz'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Cyril COLINET' => 'cyrilcolinet.pro@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '12.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  # If your plugin requires a privacy manifest, for example if it uses any
  # required reason APIs, update the PrivacyInfo.xcprivacy file to describe your
  # plugin's privacy impact, and then uncomment this line. For more information,
  # see https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
  # s.resource_bundles = {'privacy_screen_plus_privacy' => ['Resources/PrivacyInfo.xcprivacy']}
end
