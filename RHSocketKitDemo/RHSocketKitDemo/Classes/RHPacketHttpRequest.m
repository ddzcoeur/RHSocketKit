//
//  RHPacketHttpRequest.m
//  RHSocketDemo
//
//  Created by zhuruhong on 15/7/2.
//  Copyright (c) 2015年 zhuruhong. All rights reserved.
//

#import "RHPacketHttpRequest.h"

@implementation RHPacketHttpRequest

- (instancetype)init
{
    if (self = [super init]) {
        _requestPath = @"GET /index.html HTTP/1.1";
        _host = @"Host:www.baidu.com";
        _connection = @"Connection:close";
    }
    return self;
}

- (NSData *)data
{
    NSData *crlfData = [@"\r\n" dataUsingEncoding:NSASCIIStringEncoding];
    
    NSMutableData *packetData = [[NSMutableData alloc] init];
    [packetData appendData:[_requestPath dataUsingEncoding:NSASCIIStringEncoding]];
    [packetData appendData:crlfData];
    [packetData appendData:[_host dataUsingEncoding:NSASCIIStringEncoding]];
    [packetData appendData:crlfData];
    [packetData appendData:[_connection dataUsingEncoding:NSASCIIStringEncoding]];
    [packetData appendData:crlfData];
//    [packetData appendData:[@"Accept:image/webp,*/*;q=0.8" dataUsingEncoding:NSASCIIStringEncoding]];
//    [packetData appendData:crlfData];
    return packetData;
}

@end
