//
//  GraphicObject.h
//  prog9.1ComplexAndFractionTest
//
//  Created by SUREN HARUTYUNYAN on 29/9/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GraphicObject : NSObject

//I have added these to ComplexAndFractionTest because of E9

//I have imported all the file of CH8, so here we have all the P and E of CH8

//This is E8.5 CH8

-(void) setfillColor: (int) fc;
-(void) setlineColor: (int) lc;

-(int)  fillColor;  //32-bit color
-(BOOL) filled;     //Is the object filled?
-(int)  lineColor;  //32-bit line color

@end


