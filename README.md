# VoiceConvert
录音文件格式转换类

###pod

pod 'VoiceConvert',:git => "https://github.com/AwakenDragon/VoiceConvert.git"

###引入

import "EMVoiceConverter.h"

###方法

@interface EMVoiceConverter : NSObject

+ (int)isMP3File:(NSString *)filePath;

+ (int)isAMRFile:(NSString *)filePath;

+ (int)amrToWav:(NSString*)_amrPath wavSavePath:(NSString*)_savePath;

+ (int)wavToAmr:(NSString*)_wavPath amrSavePath:(NSString*)_savePath;

@end
