//
//  ClassC.m
//  prog8.1ClassABC
//
//  Created by SUREN HARUTYUNYAN on 17/9/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

//This is E8.1 CH8

#import "ClassC.h"

@implementation ClassC

-(void) initVar // added method---> this will overwrite the before initVar method
{
    x = 300;
}

-(void) printVar
{
    NSLog(@"x = %i", x);
}

@end
