#
# Be sure to run `pod lib lint DatabaseQueueManger.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DatabaseQueueManager'
  s.version          = '1.0.0'
  s.summary          = 'Database order manager.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Database order manager.
Specially dsigned for Relam of Tomohiro Uchida
                       DESC

  s.homepage         = 'https://github.com/Tomohiro-Uchida-iOS/DatabaseQueueManager'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Tomohiro Uchida' => 'uchida001tmhr@icloud.com' }
  s.source           = { :git => 'https://github.com/Tomohiro-Uchida-iOS/DatabaseQueueManager.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '15.0'
  s.swift_version = '4.0'

  s.source_files = 'Sources/DatabaseQueueManager/*.swift'
  
  # s.resource_bundles = {
  #   'DatabaseQueueManager' => ['DatabaseQueueManager/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.ios.frameworks = 'Foundation', 'Realm', 'RealmDatabase'
  # s.dependency 'AFNetworking', '~> 2.3'
end
