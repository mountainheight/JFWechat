
Pod::Spec.new do |s|
    s.name             = 'JFWechat'
    s.version      = "1.0.0"
    s.summary          = '封装微信openSDK'

    s.ios.deployment_target = '9.0'

    s.homepage         = 'https://code.hh-medic.com/dev-client/hhsdk.ios'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'ligen' => 'ligen@smartlink-tech.com.cn' }
    s.source           = { :git => 'http://code.hh-medic.com/hh_public/hhsdk.ios.jf.git', :tag => s.version }

    s.vendored_frameworks =  '*.framework'

    s.frameworks = 'CFNetwork', 'UIKit', 'Foundation', 'WebKit', 'CoreGraphics', 'Security'
    s.libraries    = 'z', 'c++', 'sqlite3'
    
    s.pod_target_xcconfig = {
       'OTHER_LDFLAGS' => '-ObjC', '-all_load'
       'ENABLE_BITCODE' => 'NO',
       'ARCHS' => ['arm64', 'x86_64']
    }
end
