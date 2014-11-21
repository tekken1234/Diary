//
//  LDHDiaryEntry.h
//  DiaryDemo
//
//  Created by LDH on 14/11/20.
//  Copyright (c) 2014年 YEHKUO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


NS_ENUM(int16_t, LDHDiaryEntryMood) {
    LDHDiaryEntryMoodGood = 0,
    LDHDiaryEntryMoodAverage = 1,
    LDHDiaryEntryMoodBad = 2
};

@interface LDHDiaryEntry : NSManagedObject

@property (nonatomic, retain) NSString * body;
@property (nonatomic) NSTimeInterval date;
@property (nonatomic) int16_t mood;
@property (nonatomic, retain) NSData * imageData;
@property (nonatomic, retain) NSString * location;
@property (nonatomic, readonly) NSString * sectionName;

@end
