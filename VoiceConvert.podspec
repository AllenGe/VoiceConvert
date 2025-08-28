Pod::Spec.new do |s|
  s.name             = 'VoiceConvert'
  s.version          = '0.1.0'
  s.summary          = 'iOS 音频文件格式转换库'
  s.description      = <<-DESC
    VoiceConvert 是一个支持 AMR <-> WAV 转换的 iOS 库，支持录音与播放，非常方便。
  DESC

  s.homepage         = 'https://github.com/AllenGe/VoiceConvert'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'AllenGe' => 'gyjshow@163.com' }
  s.source           = { :git => 'https://github.com/AllenGe/VoiceConvert.git', :tag => s.version }

  s.ios.deployment_target = '11.0'

  # 包含 VoiceConvert 目录下的所有源码文件
  s.source_files     = 'VoiceConvert/**/*.{h,m,mm,c,cpp}'

  # 如果有 C++ 代码，需要加上标准库设置
  s.pod_target_xcconfig = {
    'CLANG_CXX_LANGUAGE_STANDARD' => 'c++11',
    'CLANG_CXX_LIBRARY' => 'libc++'
  }
end
