//
//  ClassB2.m
//  prog8.1ClassABC
//
//  Created by SUREN HARUTYUNYAN on 17/9/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import "ClassB2.h"

@implementation ClassB2

-(void) initVar // added method---> this will overwrite the before initVar method
{
    x = 400;
}

-(void) printVar
{
    NSLog(@"x = %i", x);
}

@end
