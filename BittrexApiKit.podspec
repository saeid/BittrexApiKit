Pod::Spec.new do |s|
s.name             = "BittrexApiKit"
s.version          = "0.1.0"
s.summary          = "Swift wrapper for Bittrex exchange API"
s.homepage         = "https://github.com/saeid/BittrexApiKit"
s.license          = 'MIT'
s.author           = { "Saeid Basirnia" => "saeid.basirnia@gmail.com" }
s.source           = { :git => "https://github.com/saeid/BittrexApiKit.git", :tag => "0.1.0"}

s.swift-version = "4.0"
s.platform     = :ios
s.ios.deployment_target  = '10.0'
s.requires_arc = true

s.source_files = 'BittrexApiKit/**/*'
s.frameworks = 'UIKit', 'Crypto', 'CommonCrypto', 'Foundation'
s.vendored_frameworks = "CommonCrypto.framework", "Crypto.framework"

end
