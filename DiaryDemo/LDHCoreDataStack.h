//
//  LDHCoreDataStack.h
//  DiaryDemo
//
//  Created by LDH on 14/11/20.
//  Copyright (c) 2014年 YEHKUO. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LDHCoreDataStack : NSObject <UIApplicationDelegate> {
    
}

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

+(instancetype)defaultStack;
- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
