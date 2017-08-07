//
//  GraphicObject.h
//  prog10
//
//  Created by SUREN HARUTYUNYAN on 2/10/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GraphicObject : NSObject


//This is E8.5 CH8

-(void) setfillColor: (int) fc;
-(void) setlineColor: (int) lc;

-(int)  fillColor;  //32-bit color
-(BOOL) filled;     //Is the object filled?
-(int)  lineColor;  //32-bit line color

@end
