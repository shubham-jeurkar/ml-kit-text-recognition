# RNMLKitTextRecognition.podspec

require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNMLKitTextRecognition"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = "https://github.com/shubham-jeurkar/ml-kit-text-recognition"
  # brief license entry:
  s.license      = "MIT"
  # optional - use expanded license entry instead:
  # s.license    = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "Shubham Jeurkar" => "shubham.jeurkar@buzzybrains.com" }
  s.platforms    = { :ios => "15.5" }
  s.source       = { :git => "https://github.com/shubham-jeurkar/ml-kit-text-recognition.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,cc,cpp,m,mm,swift}"
  s.requires_arc = true

  s.dependency "React"
  # To recognize Latin script
  s.dependency 'GoogleMLKit/TextRecognition', '>= 6.0.0'
  # To recognize Chinese script
  s.dependency 'GoogleMLKit/TextRecognitionChinese', '8.0.0'
  # To recognize Devanagari script
  s.dependency 'GoogleMLKit/TextRecognitionDevanagari', '8.0.0'
  # To recognize Japanese script
  s.dependency 'GoogleMLKit/TextRecognitionJapanese', '8.0.0'
  # To recognize Korean script
  s.dependency 'GoogleMLKit/TextRecognitionKorean', '8.0.0'
end