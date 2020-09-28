
Pod::Spec.new do |s|
  s.name         = "RNGeouniqBeta2"
  s.version      = '1.6.2'
  s.summary      = "RNGeouniqBeta2"
  s.description  = "the beta of geouniq SDK"
  s.homepage     = ""
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/paologeouniq/GeoUniqSDK-RN.git", :tag => "${s.version}" }
  s.source_files  = "RNGeouniqBeta2/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  s.dependency "GeoUniq-Swift5"

end

  
