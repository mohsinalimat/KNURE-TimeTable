//
//  AppDelegate.h
//  KNURE TimeTable iOS
//
//  Created by Vlad Chapaev on 24.10.2013.
//  Copyright (c) 2013 Vlad Chapaev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import <MagicalRecord/MagicalRecord.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (void)saveContext;

@end