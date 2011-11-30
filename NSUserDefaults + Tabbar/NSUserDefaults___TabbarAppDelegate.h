//
//  NSUserDefaults___TabbarAppDelegate.h
//  NSUserDefaults + Tabbar
//
//  Created by Dan on 04/11/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstView.h"
#import "SecondView.h"
@interface NSUserDefaults___TabbarAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) FirstView *viewController1;
@property (nonatomic, retain) SecondView *viewController2;
@property (nonatomic, retain) UITabBarController *main_tab;
@property (nonatomic, retain) NSArray *tabs_array;


@end
