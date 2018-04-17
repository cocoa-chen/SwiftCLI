#
# Be sure to run `pod lib lint SwiftCommandLine.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftCLI'
  s.version          = '0.1.0'
  s.summary          = 'Swift CLI framework.'

  s.description      = <<-DESC
                        A powerful framework that can be used to develop a CLI in Swift.
                       DESC

  s.homepage         = 'https://github.com/cocoa-chen/SwiftCLI'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'chenaibin' => '136998328@qq.com' }
  s.source           = { :git => 'https://github.com/cocoa-chen/SwiftCLI.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.source_files = 'Sources/SwiftCLI/**/*'
  s.osx.deployment_target = '10.10'
  
end
