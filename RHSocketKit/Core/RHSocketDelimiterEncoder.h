//
//  RHSocketDelimiterEncoder.h
//  RHToolkit
//
//  Created by zhuruhong on 15/6/30.
//  Copyright (c) 2015年 zhuruhong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RHSocketEncoderProtocol.h"

/**
 *  针对数据包分隔符编码器
 *  默认数据包中每帧最大值为8192（maxFrameSize == 8192）
 *  默认数据包每帧分隔符为0xff（delimiter == 0xff）
 */
@interface RHSocketDelimiterEncoder : NSObject <RHSocketEncoderProtocol>

@property (nonatomic, assign) NSUInteger maxFrameSize;
@property (nonatomic, assign) uint8_t delimiter;

@end
