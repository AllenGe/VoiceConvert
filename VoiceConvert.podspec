Pod::Spec.new do |spec|
  spec.name         = "VoiceConvert"
  spec.version      = "0.1.0"
  spec.summary      = "WAV、AMR音频格式相互转换"

  spec.description      = <<-DESC
      VoiceConvert 是一个支持 AMR <-> WAV 转换的 iOS 库，支持录音与播放，非常方便。
    DESC


  spec.homepage         = 'https://github.com/AllenGe/VoiceConvert'
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.author           = { 'AllenGe' => 'gyjshow@163.com' }
  spec.source           = { :git => 'https://github.com/AllenGe/VoiceConvert.git', :tag => s.version }

  spec.platform     = :ios
  spec.platform     = :ios, "12.0"
   
  spec.source_files  = "VoiceConvert/**/*.{h,mm}"
   
  spec.public_header_files = "VoiceConvert/**/*.h"

 
  spec.libraries = 'c++'
  spec.vendored_library = 'opencore-amrnb/libopencore-amrnb.a', 'opencore-amrwb/libopencore-amrwb.a'
  

end
