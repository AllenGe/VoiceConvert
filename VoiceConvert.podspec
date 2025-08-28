Pod::Spec.new do |s|
  s.name         = 'VoiceConvert'
  s.version      = '0.1.0'
  s.summary      = 'A short description of VoiceConvert.'
  s.description  = <<-DESC
                    AMR/WAV 音频转换工具，基于开源编解码器实现。
                   DESC
  s.homepage     = 'https://github.com/AllenGe/VoiceConvert'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'AllenGe' => 'gyjshow@163.com' }

  s.ios.deployment_target = '12.0'
  s.source       = { :git => 'https://github.com/AllenGe/VoiceConvert.git', :tag => s.version.to_s }

  # 核心源文件
  s.source_files = [
    'EMVoiceConverter.{h,mm}',
    'amrFileCodec.{h,mm}',
    'wav.{h,mm}'
  ]
  
  # 开源库头文件
  s.preserve_paths = [
    'opencore-amrnb/interf_dec.h',
    'opencore-amrnb/interf_enc.h',
    'opencore-amrwb/dec_if.h',
    'opencore-amrwb/if_rom.h'
  ]

  # 静态库配置
  s.ios.vendored_libraries = [
    'opencore-amrnb/libopencore-amrnb.a',
    'opencore-amrwb/libopencore-amrwb.a'
  ]

  # 头文件搜索路径
  s.xcconfig = {
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/VoiceConvert/opencore-amrnb" "${PODS_ROOT}/VoiceConvert/opencore-amrwb"'
  }

  # 确保使用正确的编译器
  s.requires_arc = false
  s.libraries = 'c++'
end
