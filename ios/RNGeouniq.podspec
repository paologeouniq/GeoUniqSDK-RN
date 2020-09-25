
Pod::Spec.new do |s|
  s.name         = "RNGeouniq"
  s.version      = "1.0.0"
  s.summary      = "RNGeouniq"
  s.description  = <<-DESC
                  RNGeouniq
                   DESC
  s.homepage     = ""
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/namiml/react-native-nami-sdk.git", :tag => "#{s.version}" }
   s.source_files  = "RNGeouniq/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  s.dependency "GeoUniq-Swift5"

end

  
