//
//  XYPoint.m
//  prog11
//
//  Created by SUREN HARUTYUNYAN on 9/11/15.
//  Copyright © 2015 ClassroomM. All rights reserved.
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

@end
