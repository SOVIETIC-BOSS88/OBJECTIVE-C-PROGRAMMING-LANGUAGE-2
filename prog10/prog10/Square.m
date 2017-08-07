//
//  Square.m
//  prog10
//
//  Created by SUREN HARUTYUNYAN on 2/10/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//


#import "Square.h"

@implementation Square: Rectangle

/*
 -(void) setSide: (float) s
 {
 [self setWidth: s andHeight:s];
 }
 */

/*
 -(float) side
 {
 return self.width;
 }
 */

// This is only for E10.1 CH10
-(void) setSide: (int) s
{
    [self setWidth: s andHeight:s];
}

-(int) side
{
    return self.width;
}

//This is E10.2 CH10
-(id) initWithSide: (int) side
{
    self = [super init];
    
    if (self)
        [self setSide:side];
    
    return self;
    
}

@end

