//
//  BJAppDelegate.h
//  WerkOut
//
//  Created by Joseph Smith on 11/11/13.
//  Copyright (c) 2013 Joseph Smith. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "BJViewController.h"

@interface BJAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet BJViewController *controller;

@end
