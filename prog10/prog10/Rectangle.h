//
//  Rectangle.h
//  prog10
//
//  Created by SUREN HARUTYUNYAN on 2/10/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"
#import "GraphicObject.h"

//This is P8.2 CH8
@interface Rectangle: GraphicObject

// This is only for E10.1 CH10
@property int width, height;

/*
 @property float width, height;
 */

// This is only for E10.1 CH10
-(void) setWidth: (int) w andHeight: (int) h;

//This is E10.1 CH10
-(instancetype) initWithWidth: (int) w andHeight: (int) h; //The books puts (id), I prefer instancetype

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

//
/*
 -(void) setWidth: (float) w andHeight: (float) h;
 */
-(float) area;
-(float) perimeter;

//Here I created this print method, to make things easier
-(void) print;

@end