//
//  NSDate+ElapsedDays.m
//  prog15
//
//  Created by SUREN HARUTYUNYAN on 2/8/16.
//  Copyright © 2016 ClassroomM. All rights reserved.
//

#import "NSDate+ElapsedDays.h"


@implementation NSDate (ElapsedDays)

//This is E15.1 CH15

-(unsigned long) elapsedDays: (NSDate *) theDate
{
    unsigned long secondsElapsed = [self timeIntervalSinceDate: theDate];
    unsigned long minutesElapsed = (secondsElapsed / 60);
    unsigned long hoursElapsed   = (minutesElapsed / 60);
    unsigned long daysElapsed    = (hoursElapsed / 24);
    
    return daysElapsed;
}

@end

