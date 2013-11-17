//
//  BJAppDelegate.m
//  WerkOut
//
//  Created by Joseph Smith on 11/11/13.
//  Copyright (c) 2013 Joseph Smith. All rights reserved.
//

#import "BJAppDelegate.h"

@implementation BJAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
  NSLog(@"We starting!!!");
}

- (IBAction)takeIntValueForTreadmillFrom:(id)sender {
    NSLog(@"Tradmill minutes!");
}

- (IBAction)takeCrunchesFrom:(id)sender {
    NSLog(@"Crunches!");
}

- (IBAction)takeWorkoutIntensityFrom:(id)sender {
    NSLog(@"Intensity!");
}
@end
