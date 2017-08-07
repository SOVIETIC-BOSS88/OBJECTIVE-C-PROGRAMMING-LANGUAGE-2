//
//  XYPoint.m
//  prog18
//
//  Created by SUREN HARUTYUNYAN on 8/6/17.
//  Copyright © 2017 ClassroomM. All rights reserved.
//

#import "XYPoint.h"

@implementation XYPoint

@synthesize x, y;

-(void) setX: (float) xVal1 andY: (float) yVal1
{
    x = xVal1;
    y = yVal1;
}

-(void) print
{
    NSLog(@"(%f, %f)", x, y);
}

//This is E18.1 CH18
-(id) copyWithZone:(NSZone *)zone
{
    id point = [[[self class] allocWithZone:zone] init];
    [point setX:x andY:y];
    return point;
}



@end
