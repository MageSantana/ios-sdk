Pod::Spec.new do |s|
  s.name             = 'LyraPaymentSDK'
  s.version          = '1.0.0'
  s.summary          = 'A short description of LyraPaymentSDK.'

  s.homepage         = 'https://github.com/lyra/ios-sdk'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Damien Guerin' => 'dguerin@lyra-network.com' }
  s.source           = { :git => 'https://github.com/lyra/ios-sdk.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  
  s.swift_version = '5.1'
  
  s.ios.vendored_frameworks = 'LyraPaymentSDK.framework'

  s.dependency 'Material', '~> 2.16.4'
  s.dependency 'SnapKit', '~> 4.2.0'
  s.dependency 'Sentry', '~> 4.3.2'
end

