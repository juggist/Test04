
#
# Be sure to run `pod lib lint PodCreate.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PodCreate'
  s.version          = '0.1.1'
  s.summary          = 'A short description of PodCreate.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/juggist/Test04.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'juggist' => 'feisong.lu@transsion.com' }
  s.source           = { :git => 'https://github.com/juggist/Test04.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'PodCreate/Classes/**/*'
  
  # s.resource_bundles = {
  #   'PodCreate' => ['PodCreate/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.static_framework = true
  p = Dir::open("ios_frameworks")
  arr = Array.new
  arr.push('ios_frameworks/App.xcframework')
  arr.push('ios_frameworks/flutter_boost.xcframework')
  arr.push('ios_frameworks/Flutter.xcframework')
  arr.push('ios_frameworks/FlutterPluginRegistrant.xcframework')
  arr.push('ios_frameworks/webview_flutter_wkwebview.xcframework')
  
#  s.ios.vendored_frameworks = 'ios_frameworks/App.xcframework', 'ios_frameworks/flutter_boost.xcframework', 'ios_frameworks/Flutter.xcframework', 'ios_frameworks/FlutterPluginRegistrant.xcframework', 'ios_frameworks/webview_flutter_wkwebview.xcframework'
  s.ios.vendored_frameworks = arr
end
