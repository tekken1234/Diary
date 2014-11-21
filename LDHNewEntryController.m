//
//  LDHNewEntryController.m
//  DiaryDemo
//
//  Created by LDH on 14/11/20.
//  Copyright (c) 2014年 YEHKUO. All rights reserved.
//

#import "LDHNewEntryController.h"
#import "LDHCoreDataStack.h"
#import "LDHDiaryEntry.h"

@interface LDHNewEntryController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;


@end

@implementation LDHNewEntryController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)dismissSelf {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)insertDiaryEntry {
    LDHCoreDataStack *coreDataStack = [LDHCoreDataStack defaultStack];
    LDHDiaryEntry *entry = [NSEntityDescription insertNewObjectForEntityForName:@"LDHDiaryEntry" inManagedObjectContext:coreDataStack.managedObjectContext];
    entry.body = self.textField.text;
    entry.date = [[NSDate date] timeIntervalSince1970];
    [coreDataStack saveContext];
    NSLog(@"data saved!?");
    
}

- (IBAction)doneWasPressed:(id)sender {
    [self insertDiaryEntry];
    [self dismissSelf];
}
- (IBAction)cancelWasPressed:(id)sender {
    [self dismissSelf];
}




@end
