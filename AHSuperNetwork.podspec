#
# Be sure to run `pod lib lint AHSuperNetwork.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AHSuperNetwork'
  s.version          = '0.1.0'
  s.summary          = 'A convience Cocoapod Swift-based HTTP networking library for iOS'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
"AHSuperNetwork is a CocoaPods that wrap the URLSession basic network layer to be more testable, maintainable, Cancellable and also you can use it to download or updload or just to track the progress of your network task"
                       DESC

  s.homepage         = 'https://github.com/engsulta/AHSuperNetwork'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'engsulta' => 'en.ahmedsultan@gmail.com' }
  s.source           = { :git => 'https://github.com/engsulta/AHSuperNetwork.git', :tag => s.version.to_s }
  #s.social_media_url = 'https://www.linkedin.com/in/ahmed-hamza-700b2133/'

  s.ios.deployment_target = '10.0'

  s.source_files = 'AHSuperNetwork/Classes/**/*'
  
   #s.resource_bundles = {
   #  'AHSuperNetwork' => ['AHSuperNetwork/Assets/*.png']
   #}
   swift_versions = '4.0'
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'Foundation', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
