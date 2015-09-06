Pod::Spec.new do |s|
  s.name             = "SMReactiveRestKit"
  s.version          = "0.4"
  s.summary          = "ReactiveCocoa implementation for RestKit"
  s.description      = <<-DESC
                      SMReactiveRestKit brings all the power of RestKit into ReactiveCocoa world. It wraps RKObjectManager into a signal that can be subscribed to.
                      DESC
  s.homepage         = "https://github.com/stefanomondino/SMReactiveRestKit"
  s.license          = 'MIT'
  s.author           = { "Stefano Mondino" => "stefano.mondino.dev@gmail.com" }
  s.source           = { :git => "https://github.com/stefanomondino/SMReactiveRestKit.git", :tag => s.version.to_s }
  s.social_media_url = 'http://www.stefanomondino.com'

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.8'
  s.ios.frameworks = 'SystemConfiguration', 'MobileCoreServices'
  s.osx.frameworks = 'SystemConfiguration', 'CoreServices'
  s.prefix_header_contents = <<-EOS
#import <Availability.h>
#if __IPHONE_OS_VERSION_MIN_REQUIRED
  #import <SystemConfiguration/SystemConfiguration.h>
  #import <MobileCoreServices/MobileCoreServices.h>
#else
  #import <SystemConfiguration/SystemConfiguration.h>
  #import <CoreServices/CoreServices.h>
#endif
EOS

  s.requires_arc = true
  s.source_files = 'Classes'
  s.public_header_files = 'Classes/*.h'
  s.dependency 'ReactiveCocoa'
  s.dependency 'RestKit'
end
