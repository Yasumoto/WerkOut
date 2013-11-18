//
//  BJAppDelegate.m
//  WerkOut
//
//  Created by Joseph Smith on 11/11/13.
//  Copyright (c) 2013 Joseph Smith. All rights reserved.
//

#import "BJAppDelegate.h"
#import "BJWerkData.h"
#import "BJWerkOut.h"

@interface BJAppDelegate ()
- (void)updateViewWithWerkData:(BJWerkOut *)werkout;
@end

@implementation BJAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
  BJWerkData *werk = [[BJWerkData alloc] init];
  self.werk = werk;
}

- (IBAction)changeDate:(NSDatePicker *)sender {
  [self updateViewWithWerkData:[self.werk werkOutForDate:[sender dateValue]]];
}

- (IBAction)submitWorkout:(NSButton *)sender {
  BJWerkOut *werkout = [[BJWerkOut alloc] init];
  werkout.intensity = self.intensitySlider.intValue;
  werkout.crunches = self.crunchesTextField.intValue;
  werkout.treadmill = self.treadmillTextField.intValue;
  [self.werk setWerkout:werkout forDate:[self.workoutDatePicker dateValue]];
}

- (IBAction)updateWorkoutIntensity:(NSSlider *)sender {
  NSLog(@"Setting value to: %d", sender.intValue);
  NSLog(@"From: %@", self.intensityText.stringValue);
  [self.intensityText setStringValue:[NSString stringWithFormat:@"%d", sender.intValue]];
}

- (void)updateViewWithWerkData:(BJWerkOut *)werkout {
}
@end
