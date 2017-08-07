//
//  XYPoint.h
//  prog9.1ComplexAndFractionTest
//
//  Created by SUREN HARUTYUNYAN on 29/9/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject


//I have added these to ComplexAndFractionTest becasue of E9

//I have imported all the file of CH8, so here we have all the P and E of CH8

@property float x, y;

-(void) setX: (float) xVal1 andY: (float) yVal1;

//This is E9.3 CH9
-(void) print;

@end