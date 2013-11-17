//
//  BJAppDelegate.h
//  WerkOut
//
//  Created by Joseph Smith on 11/11/13.
//  Copyright (c) 2013 Joseph Smith. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class BJWerkData;

@interface BJAppDelegate : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet NSTextField *treadmillTextField;
@property (weak) IBOutlet NSTextField *crunchesTextField;
@property (weak) IBOutlet NSDatePicker *workoutDatePicker;
@property (weak) IBOutlet NSSlider *intensitySlider;
@property (assign) IBOutlet NSWindow *window;
@property (strong) BJWerkData *werk;

- (IBAction)takeIntValueForTreadmillFrom:(NSTextField *)sender;
- (IBAction)takeCrunchesFrom:(NSTextField *)sender;
- (IBAction)takeWorkoutIntensityFrom:(NSSlider *)sender;
- (IBAction)changeDate:(NSDatePicker *)sender;

@end
