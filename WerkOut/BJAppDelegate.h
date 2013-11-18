//
//  BJAppDelegate.h
//  WerkOut
//
//  Created by Joseph Smith on 11/11/13.
//  Copyright (c) 2013 Joseph Smith. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class BJWerkData;
@class BJWerkOut;

@interface BJAppDelegate : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet NSTextField *treadmillTextField;
@property (weak) IBOutlet NSTextField *crunchesTextField;
@property (weak) IBOutlet NSDatePicker *workoutDatePicker;
@property (weak) IBOutlet NSTextField *intensityText;
@property (weak) IBOutlet NSSlider *intensitySlider;
@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSButton *submitButton;
@property (strong) BJWerkData *werk;


- (IBAction)updateWorkoutIntensity:(NSSlider *)sender;
- (IBAction)changeDate:(NSDatePicker *)sender;
- (IBAction)submitWorkout:(NSButton *)sender;

@end
