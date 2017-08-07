//
//  XYPoint.h
//  prog18
//
//  Created by SUREN HARUTYUNYAN on 8/6/17.
//  Copyright © 2017 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject <NSCopying>

@property float x, y;

-(void) setX: (float) xVal1 andY: (float) yVal1;
-(void) print;

//This is E18.1 CH18
-(id) copyWithZone:(NSZone *)zone;


@end
