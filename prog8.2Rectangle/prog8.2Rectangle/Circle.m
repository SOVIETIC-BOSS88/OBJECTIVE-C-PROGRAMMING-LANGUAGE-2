//
//  Circle.m
//  prog8.2Rectangle
//
//  Created by SUREN HARUTYUNYAN on 17/9/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import "Circle.h"

@implementation Circle

@synthesize radius;

//This is E8.5 CH8
-(float) circumference
{
    return 2 * M_PI * radius;
}

-(float) area
{
    return radius * radius * M_PI;
}


@end
