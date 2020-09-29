require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-geo-uniq-test"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = "Geouniq Framework"
  s.homepage     = "www.geouniq.com"
  # brief license entry:
  s.license      = "MIT"
  # optional - use expanded license entry instead:
  # s.license    = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "Your Name" => "paolo.donato@geouniq.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/paologeouniq/GeoUniqSDK-RN.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  # ...
s.dependency "GeoUniq-Swift5"
end

