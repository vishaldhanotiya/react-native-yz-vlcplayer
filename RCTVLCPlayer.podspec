require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = 'RCTVLCPlayer'
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = "https://github.com/sophatvathana-slash/react-native-yz-vlcplayer"
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/sophatvathana-slash/react-native-yz-vlcplayer", :tag => "v#{s.version}" }

  s.subspec "RCTVLCPlayer" do |ss|
    ss.source_files  = "ios/**/*.{h,m}"
    s.static_framework = true
  end
  
  s.dependency 'MobileVLCKit'
  s.dependency 'React'
  s.default_subspec = "RCTVLCPlayer"
end