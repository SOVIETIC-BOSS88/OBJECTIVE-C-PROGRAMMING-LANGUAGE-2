//
//  GraphicObject.m
//  prog10
//
//  Created by SUREN HARUTYUNYAN on 2/10/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import "GraphicObject.h"

@implementation GraphicObject

//This is E8.5 CH8
{
    int fillColor, lineColor;
    BOOL filled;
}

-(void) setfillColor: (int) fc
{
    fillColor = fc;
}

-(void) setlineColor: (int) lc
{
    lineColor = lc;
}

-(int)  fillColor //32-bit color
{
    return fillColor;
}

-(int)  lineColor   //32-bit line color
{
    return lineColor;
}

-(BOOL) filled; //Is the object filled?
{
    if (fillColor == 0 || lineColor == 0)
        return NO;
    
    else
        return YES;
}

@end