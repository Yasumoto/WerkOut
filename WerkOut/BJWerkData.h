//
//  BJWerkData.h
//  WerkOut
//
//  Created by Joseph Smith on 11/16/13.
//  Copyright (c) 2013 Joseph Smith. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BJWerkOut;

@interface BJWerkData : NSObject

- (void)setWerkout:(BJWerkOut *)werkout forDate:(NSDate *)date;
- (BJWerkOut *)werkOutForDate:(NSDate *)date;

@end
