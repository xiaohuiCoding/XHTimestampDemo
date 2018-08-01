//
//  TimeTool.h
//  XHTimestampDemo
//
//  Created by xiaohui on 2018/8/1.
//  Copyright © 2018年 XIAOHUI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TimeTool : NSObject

//时间戳转字符串
- (NSString *)getBabyDetailAge:(NSDate *)date;

//字符串转时间戳
- (NSInteger)cTimestampFromString:(NSString *)timeStr format:(NSString *)format;

@end
