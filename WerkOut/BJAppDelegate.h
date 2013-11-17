//
//  BJAppDelegate.h
//  WerkOut
//
//  Created by Joseph Smith on 11/11/13.
//  Copyright (c) 2013 Joseph Smith. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BJAppDelegate : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet NSTextField *TreadmillMinutesTextField;
@property (weak) IBOutlet NSTextField *CrunchesTextField;
@property (weak) IBOutlet NSDatePicker *WorkoutDatePicker;
@property (assign) IBOutlet NSWindow *window;

- (IBAction)takeIntValueForTreadmillFrom:(id)sender;
- (IBAction)takeCrunchesFrom:(id)sender;
- (IBAction)takeWorkoutIntensityFrom:(id)sender;

@end
