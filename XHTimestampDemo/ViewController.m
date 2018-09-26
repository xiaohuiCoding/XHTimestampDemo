//
//  ViewController.m
//  XHTimestampDemo
//
//  Created by xiaohui on 2018/8/1.
//  Copyright © 2018年 XIAOHUI. All rights reserved.
//

#import "ViewController.h"
#import "TimeTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *timeStr = @"2018-08-01 15:00";
    NSInteger stamp = [[TimeTool alloc] cTimestampFromString:timeStr format:@"yyyy-MM-dd HH:mm"];
    NSLog(@"字符串转时间戳: %@ -> %ld",timeStr,stamp);
    
    
    
    NSString *string = [NSString stringWithFormat:@"%ld",stamp];
    NSString *resultString = [[TimeTool alloc] getBabyDetailAge:[NSDate dateWithTimeIntervalSince1970:[string floatValue]]];
    NSLog(@"时间戳转字符串: %@ -> %@",string,resultString);
    
    
    
//    NSInteger timestamp = 1533106800;
//    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp];
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    dateFormatter.dateFormat = @"yy年MM月dd日 HH:mm:ss";
//    NSString *dateString = [dateFormatter stringFromDate:date];
//    NSLog(@"%@",dateString);
    
    
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    dateFormatter.dateFormat = @"yy年MM月dd日 HH:mm:ss";
//    NSString *dateString = @"2018年08月01日 15:00:00";
//    NSDate *date = [dateFormatter dateFromString:dateString];
//    NSInteger timestamp = date.timeIntervalSince1970;
//    NSLog(@"%ld",timestamp);
}

@end
