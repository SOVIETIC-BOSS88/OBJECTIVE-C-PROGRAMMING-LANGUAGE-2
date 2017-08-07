//
//  Square.m
//  prog8.2Rectangle
//
//  Created by SUREN HARUTYUNYAN on 16/9/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import "Square.h"

@implementation Square: Rectangle

-(void) setSide: (int) s
{
    [self setWidth: s andHeight:s];
}


-(int) side
{
    return self.width;
}

@end

