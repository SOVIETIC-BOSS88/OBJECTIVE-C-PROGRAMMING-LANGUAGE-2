//
//  Square.m
//  prog9.2RectangleTest
//
//  Created by SUREN HARUTYUNYAN on 29/9/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import "Square.h"

@implementation Square: Rectangle

-(void) setSide: (float) s
{
    [self setWidth: s andHeight:s];
}


-(float) side
{
    return self.width;
}

@end

