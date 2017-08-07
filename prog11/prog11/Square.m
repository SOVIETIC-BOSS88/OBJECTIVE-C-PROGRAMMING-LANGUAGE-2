//
//  Square.m
//  prog11
//
//  Created by SUREN HARUTYUNYAN on 9/11/15.
//  Copyright © 2015 ClassroomM. All rights reserved.
//

#import "Square.h"

@implementation Square

//This is E11.5 CH11
{
    Rectangle *rect;
}

//Insert Square methods here

-(id) init
{
    return [self initWithSide:0];
}

-(instancetype) initWithSide: (int) s
{
    self = [super init];
    if (self)
    {
        rect = [[Rectangle alloc] initWithWidth:s andHeight:s];
    }
    return self;
}

-(void) setSide: (int) s
{
    [rect setWidth: s andHeight:s];
}

-(int) side
{
    return rect.width;
}

-(int) area
{
    return (rect.width * rect.height);
}

-(int) perimeter
{
    return (2 * rect.width + 2 * rect.height);
}

@end
