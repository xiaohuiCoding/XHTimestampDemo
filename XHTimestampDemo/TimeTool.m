//
//  TimeTool.m
//  XHTimestampDemo
//
//  Created by xiaohui on 2018/8/1.
//  Copyright © 2018年 XIAOHUI. All rights reserved.
//

#import "TimeTool.h"

@implementation TimeTool

- (NSString *)getBabyDetailAge:(NSDate *)date
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"YYYY-MM-dd HH:mm"];
    NSString *dateString = [formatter stringFromDate:date];
    //dateString = [dateString stringByReplacingOccurrencesOfString:@"-" withString:@"/"];
    return dateString;
}

- (NSInteger)cTimestampFromString:(NSString *)timeStr
                          format:(NSString *)format
{
    NSDate *date = [self dateFromString:timeStr format:format];
    return [self cTimestampFromDate:date];
}

- (NSDate *)dateFromString:(NSString *)timeStr
                   format:(NSString *)format
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:format];
    NSDate *date = [dateFormatter dateFromString:timeStr];
    return date;
}

- (NSInteger)cTimestampFromDate:(NSDate *)date
{
    return (long)[date timeIntervalSince1970];
}

@end
