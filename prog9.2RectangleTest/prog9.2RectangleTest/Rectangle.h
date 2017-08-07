//
//  Rectangle.h
//  prog9.2RectangleTest
//
//  Created by SUREN HARUTYUNYAN on 29/9/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"
#import "GraphicObject.h"


//I have imported all the file of CH8, so here we have all the P and E of CH8

//This is P8.2 CH8
@interface Rectangle: GraphicObject

@property float width, height;

//This is E8.8 CH8
-(void) draw;

//This is E8.7 CH8
-(Rectangle *) intersect: (Rectangle *) aRectangle;

//This is E8.6 CH8
-(BOOL) containsPoint: (XYPoint *) aPoint;

//This is E8.4 CH8
-(void) translate: (XYPoint *) t;

//This is P8.5 CH8
-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(void) setWidth: (float) w andHeight: (float) h;
-(float) area;
-(float) perimeter;

@end