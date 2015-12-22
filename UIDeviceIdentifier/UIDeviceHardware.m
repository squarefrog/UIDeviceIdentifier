//
//  UIDeviceHardware.m
//
//  Created by Paul Williamson on 9/12/2012
//  https://github.com/squarefrog/UIDeviceIdentifier
//

#import "UIDeviceHardware.h"
#include <sys/sysctl.h>

@implementation UIDeviceHardware

+ (NSString *) platform
{
    size_t size;
    sysctlbyname("hw.machine", NULL, &size, NULL, 0);
    char *machine = malloc(size);
    sysctlbyname("hw.machine", machine, &size, NULL, 0);
    NSString *platform = [NSString stringWithUTF8String:machine];
    free(machine);

    return platform;
}

+ (NSString *) platformString
{
    NSString *platform = [self platform];

    static const NSDictionary *platformStrings;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        platformStrings = @
        {
#if !defined(TARGET_OS_IOS) || TARGET_OS_IOS
            @"iPhone1,1": @"iPhone 1G",
            @"iPhone1,2": @"iPhone 3G",
            @"iPhone2,1": @"iPhone 3GS",
            @"iPhone3,1": @"iPhone 4 (GSM)",
            @"iPhone3,2": @"iPhone 4 (GSM Rev A)",
            @"iPhone3,3": @"iPhone 4 (CDMA)",
            @"iPhone4,1": @"iPhone 4S",
            @"iPhone5,1": @"iPhone 5 (GSM)",
            @"iPhone5,2": @"iPhone 5 (GSM+CDMA)",
            @"iPhone5,3": @"iPhone 5C (GSM)",
            @"iPhone5,4": @"iPhone 5C (GSM+CDMA)",
            @"iPhone6,1": @"iPhone 5S (GSM)",
            @"iPhone6,2": @"iPhone 5S (GSM+CDMA)",
            @"iPhone7,1": @"iPhone 6 Plus",
            @"iPhone7,2": @"iPhone 6",
            @"iPhone8,1": @"iPhone 6s",
            @"iPhone8,2": @"iPhone 6s Plus",
            @"iPod1,1": @"iPod Touch 1G",
            @"iPod2,1": @"iPod Touch 2G",
            @"iPod3,1": @"iPod Touch 3G",
            @"iPod4,1": @"iPod Touch 4G",
            @"iPod5,1": @"iPod Touch 5G",
            @"iPod7,1": @"iPod Touch 6G",
            @"iPad1,1": @"iPad 1",
            @"iPad2,1": @"iPad 2 (WiFi)",
            @"iPad2,2": @"iPad 2 (GSM)",
            @"iPad2,3": @"iPad 2 (CDMA)",
            @"iPad2,4": @"iPad 2",
            @"iPad2,5": @"iPad Mini (WiFi)",
            @"iPad2,6": @"iPad Mini (GSM)",
            @"iPad2,7": @"iPad Mini (GSM+CDMA)",
            @"iPad3,1": @"iPad 3 (WiFi)",
            @"iPad3,2": @"iPad 3 (GSM+CDMA)",
            @"iPad3,3": @"iPad 3 (GSM)",
            @"iPad3,4": @"iPad 4 (WiFi)",
            @"iPad3,5": @"iPad 4 (GSM)",
            @"iPad3,6": @"iPad 4 (GSM+CDMA)",
            @"iPad4,1": @"iPad Air (WiFi)",
            @"iPad4,2": @"iPad Air (WiFi/Cellular)",
            @"iPad4,3": @"iPad Air (China)",
            @"iPad4,4": @"iPad Mini Retina (WiFi)",
            @"iPad4,5": @"iPad Mini Retina (WiFi/Cellular)",
            @"iPad4,6": @"iPad Mini Retina (China)",
            @"iPad4,7": @"iPad Mini 3 (WiFi)",
            @"iPad4,8": @"iPad Mini 3 (WiFi/Cellular)",
            @"iPad5,1": @"iPad Mini 4 (WiFi)",
            @"iPad5,2": @"iPad Mini 4 (WiFi/Cellular)",
            @"iPad5,3": @"iPad Air 2 (WiFi)",
            @"iPad5,4": @"iPad Air 2 (WiFi/Cellular)",
            @"iPad6,7": @"iPad Pro (WiFi)",
            @"iPad6,8": @"iPad Pro (WiFi/Cellular)",
#endif
#if TARGET_OS_TV
            @"AppleTV5,3": @"Apple TV 4G",
#endif
#if !defined(TARGET_OS_SIMULATOR) || TARGET_OS_SIMULATOR
            @"i386": @"Simulator",
            @"x86_64": @"Simulator",
#endif
        };
    });

    return platformStrings[platform] ?: platform;
}

+ (NSString *) platformStringSimple
{
    NSString *platformString = [self platformString];
    
    NSRange range = [platformString rangeOfString:@"("];
    if (range.length)
        return [platformString substringToIndex:range.location - 1];
    
    return platformString;
}

@end
