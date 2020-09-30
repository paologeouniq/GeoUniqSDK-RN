
Pod::Spec.new do |s|
  s.name         = "RNGeouniqTest"
  s.version      = "1.0.0"
  s.summary      = "RNGeouniqTest"
  s.description  = "Descrizione"
  s.homepage     = "www.geouniq.com"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "paolo.donato@geouniq.com" }
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/paologeouniq/GeoUniqSDK-RN.git", :tag => "#{s.version}" }
  s.source_files  = "RNGeouniqTest/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  
