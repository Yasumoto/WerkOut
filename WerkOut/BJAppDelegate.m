//
//  BJAppDelegate.m
//  WerkOut
//
//  Created by Joseph Smith on 11/11/13.
//  Copyright (c) 2013 Joseph Smith. All rights reserved.
//

#import "BJAppDelegate.h"
#import "BJWerkData.h"

@implementation BJAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
  BJWerkData *werk = [[BJWerkData alloc] init];
  self.werk = werk;
}

- (IBAction)takeIntValueForTreadmillFrom:(NSTextField *)sender {
  self.werk.treadmill = [sender intValue];
}

- (IBAction)takeCrunchesFrom:(NSTextField *)sender {
  self.werk.crunches = [sender intValue];
}

- (IBAction)takeWorkoutIntensityFrom:(NSSlider *)sender {
  self.werk.intensity = [sender intValue];
}

- (IBAction)changeDate:(NSDatePicker *)sender {
}
@end
