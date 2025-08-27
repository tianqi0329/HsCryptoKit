Pod::Spec.new do |s|
  s.name             = 'HsCryptoKit'
  s.version          = '1.0.0'
  s.summary          = 'Swift cryptography utilities for iOS and macOS.'
  s.description      = <<-DESC
HsCryptoKit provides cryptographic utilities for iOS and macOS, including support for BigInt arithmetic, secp256k1 elliptic curve operations, and other helper extensions.
  DESC
  s.homepage         = 'https://github.com/tianqi0329/HsCryptoKit.Swift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tianqi0329' => 'tianqi_xinya@163.com' }

  # 仓库源码
  s.source           = { :git => 'git@github.com:tianqi0329/HsCryptoKit.Swift.git', :tag => s.version.to_s }

  # 平台和 Swift 版本
  s.ios.deployment_target = '13.0'
  s.macos.deployment_target = '10.15'
  s.swift_version = '5.6'

  # CocoaPods 依赖
  s.dependency 'BigInt', '~> 5.0'
  s.dependency 'HsExtensions', '~> 1.0'
  s.dependency 'swift-crypto', '~> 2.0'
  s.dependency 'secp256k1.swift', '~> 0.10'

  # 代码文件
  s.source_files = [
    'Sources/HsCryptoKit/**/*.swift',
    'Sources/HsCryptoKitC/**/*.{swift,c,h}'
  ]

  # 排除测试文件
  s.exclude_files = 'Tests/**/*'

  # 编译优化
  s.pod_target_xcconfig = {
    'SWIFT_OPTIMIZATION_LEVEL' => '-O',
    'SWIFT_COMPILATION_MODE' => 'wholemodule'
  }
end
