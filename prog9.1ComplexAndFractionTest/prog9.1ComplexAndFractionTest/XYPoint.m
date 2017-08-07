//
//  XYPoint.m
//  prog9.1ComplexAndFractionTest
//
//  Created by SUREN HARUTYUNYAN on 29/9/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import "XYPoint.h"

@implementation XYPoint

@synthesize x, y;

-(void) setX: (float) xVal1 andY: (float) yVal1
{
    x = xVal1;
    y = yVal1;
}

//This is E9.3 CH9

-(void) print

{
    NSLog(@"(%g,%g)", x , y);
}

@end
