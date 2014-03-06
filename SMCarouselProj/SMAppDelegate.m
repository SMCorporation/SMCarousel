//
//  SMAppDelegate.m
//  SMCarouselProj
//
//  Created by Sergey Pirogov on 06.03.14.
//  Copyright (c) 2014 SM. All rights reserved.
//

#import "SMAppDelegate.h"
#import "SMSimpleCarouselViewController.h" //EXAMPLE 1

static NSUInteger const kExampleNumber = 1;


@implementation SMAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[self createRootVCForExample:kExampleNumber]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (UIViewController *)createRootVCForExample:(int)exampleNumber
{
    UIViewController *result = nil;
    switch (exampleNumber) {
        case 1:
            result = [SMSimpleCarouselViewController new];
            break;

        default:
            break;
    }
    return result;
}

@end
