//
//  LDHDiaryEntry.m
//  DiaryDemo
//
//  Created by LDH on 14/11/20.
//  Copyright (c) 2014年 YEHKUO. All rights reserved.
//

#import "LDHDiaryEntry.h"


@implementation LDHDiaryEntry


@dynamic body;
@dynamic date;
@dynamic mood;
@dynamic imageData;
@dynamic location;

-(NSString *)sectionName {
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:self.date];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"EEEE MMMM d, YYYY"];
    return [dateFormatter stringFromDate:date];
}

@end
