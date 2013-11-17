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
@end
  
@implementation BJWerkData

- (id)init {
  self = [super init];
  if (self) {
    self.werkouts = [[NSDictionary alloc] init];
  }
  return self;
}

- (void)setWerkout:(BJWerkOut *)werkout forDate:(NSDate *)date {
  [self.werkouts setValue:werkout forKey:[date description]];
}

- (BJWerkOut *)werkOutForDate:(NSDate *)date {
  return [self.werkouts objectForKey:[date description]];
}

@end
