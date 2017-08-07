//
//  ClassB.m
//  prog8.1ClassABC
//
//  Created by SUREN HARUTYUNYAN on 17/9/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import "ClassB1.h"

@implementation ClassB1

-(void) initVar // added method---> this will overwrite the before initVar method
{
    x = 200;
}

-(void) printVar
{
    NSLog(@"x = %i", x);
}

@end
