
Pod::Spec.new do |s|
  s.name         = "RNGeouniq"
  s.version      = "1.6.1"
  s.summary      = "RNGeouniq"
  s.description  = "SDK GeoUniq for React-Native"
                  
  s.homepage     = "www.geouniq.com"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "paolo.donato@geouniq.com" }
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/paologeouniq/GeoUniqSDK-RN.git", :tag => "#{s.version}" }
   s.source_files  = "RNGeouniq/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  s.dependency "GeoUniq-Swift5"

end

  
