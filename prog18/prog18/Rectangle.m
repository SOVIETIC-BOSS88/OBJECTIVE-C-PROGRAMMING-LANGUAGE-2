//
//  Rectangle.m
//  prog18
//
//  Created by SUREN HARUTYUNYAN on 8/6/17.
//  Copyright © 2017 ClassroomM. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle


{
    XYPoint *origin;
}

@synthesize width, height;

//This is E11.5 CH11
-(id) init
{
    return [self initWithWidth:0 andHeight:0];
}

-(id) initWithWidth: (int) w andHeight: (int) h
{
    self = [super init];
    if (self)
    {
        [self setWidth: w andHeight:h];
    }
    return self;
}

//This is P8.5 CH8
-(void) setOrigin: (XYPoint *) pt
{
    origin = [[XYPoint alloc] init];
    
    origin.x = pt.x;
    origin.y = pt.y;
}

-(XYPoint *) origin
{
    return origin;
}

-(void) setWidth: (int) w andHeight: (int) h;
{
    width = w;
    height = h;
}

-(int) area;
{
    return width * height;
}

-(int) perimeter;
{
    return (width + height) * 2;
}


//This is E18.1 CH18
-(id) copyWithZone:(NSZone *)zone
{
    id rect = [[[self class] allocWithZone:zone] init];
    [rect setWidth:width andHeight:height];
    [rect setOrigin: [origin copy]];
    return rect;
}



@end
