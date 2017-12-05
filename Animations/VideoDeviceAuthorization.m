//
//  VideoDeviceAuthorization.m
//  QRCode
//
//  Created by LeiLuRong on 16/7/7.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import "VideoDeviceAuthorization.h"

@implementation VideoDeviceAuthorization

+ (AVAuthorizationStatus)authorizationStatus {
    
    return [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
}

@end
