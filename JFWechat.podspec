#
# Be sure to run `pod lib lint JFWechat.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'JFWechat'
  s.version          = '1.0.0'
  s.summary          = 'A short description of JFWechat.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC
                       
  s.ios.deployment_target = '9.0'
                       
  #s.source_files = 'JFWechat/Classes/**/*'
  s.homepage         = 'https://code.hh-medic.com/dev-client/hhsdk.ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ligen' => 'ligen@smartlink-tech.com.cn' }
  s.source           = { :git => 'https://github.com/mountainheight/JFWechat.git', :tag => s.version }

  s.ios.vendored_frameworks =  'JFWechat/**/*.framework'

  s.frameworks = 'CFNetwork', 'UIKit', 'Foundation', 'WebKit', 'CoreGraphics', 'Security'
  s.libraries    = 'z', 'c++', 'sqlite3'
  
  s.pod_target_xcconfig = {
     'OTHER_LDFLAGS' => '-ObjC-all_load',
     'ENABLE_BITCODE' => 'NO',
     'VALID_ARCHS' => ['arm64', 'x86_64','armv7'],
  }
end
