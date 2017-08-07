//
//  Triangle.m
//  prog8.2Rectangle
//
//  Created by SUREN HARUTYUNYAN on 17/9/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle

@synthesize side1, side2, side3, height, base;

//This is E8.5 CH8
-(int) perimeter
{
    return side1 + side2 + side3;
}


-(int) area
{
    return ((base * height)/2);
}

@end
