//
//  BJWerkData.m
//  WerkOut
//
//  Created by Joseph Smith on 11/16/13.
//  Copyright (c) 2013 Joseph Smith. All rights reserved.
//

#import "BJWerkData.h"
#import "BJWerkOut.h"

@interface BJWerkData ()
@property (nonatomic, strong) NSDictionary *werkouts;
@property (nonatomic, strong) NSDateFormatter *formatter;
@end
  
@implementation BJWerkData

- (id)init {
  self = [super init];
  if (self) {
    self.werkouts = [[NSMutableDictionary alloc] init];
    self.formatter = [[NSDateFormatter alloc] init];
    [self.formatter setTimeStyle:NSDateFormatterNoStyle];
    [self.formatter setDateStyle:NSDateFormatterShortStyle];
  }
  return self;
}

- (void)setWerkout:(BJWerkOut *)werkout forDate:(NSDate *)date {
  NSLog(@"On date: %@- Intensity: %d, minutes: %d, crunches: %d", [self.formatter stringFromDate:date], werkout.intensity, werkout.treadmill, werkout.crunches);
  [self.werkouts setValue:werkout forKey:[self.formatter stringFromDate:date]];
}

- (BJWerkOut *)werkOutForDate:(NSDate *)date {
  BJWerkOut *data = [self.werkouts objectForKey:[self.formatter stringFromDate:date]];
  if (data) {
    return data;
  }
  return [[BJWerkOut alloc] init];
}

@end
