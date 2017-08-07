//
//  Rectangle.h
//  prog8.2Rectangle
//
//  Created by SUREN HARUTYUNYAN on 16/9/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"
#import "GraphicObject.h"


//This is P8.2 CH8
@interface Rectangle: GraphicObject

@property int width, height;

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
-(void) setWidth: (int) w andHeight: (int) h;
-(int) area;
-(int) perimeter;

@end