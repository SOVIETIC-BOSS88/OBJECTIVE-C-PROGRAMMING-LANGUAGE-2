//
//  Rectangle.h
//  prog18
//
//  Created by SUREN HARUTYUNYAN on 8/6/17.
//  Copyright © 2017 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"

@interface Rectangle : NSObject <NSCopying>

@property int width, height;

//This is E11.5 CH11
-(id) init;
-(id) initWithWidth: (int) w andHeight: (int) h;

//This is P8.5 CH8
-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(void) setWidth: (int) w andHeight: (int) h;
-(int) area;
-(int) perimeter;


//This is E18.1 CH18
-(id) copyWithZone:(NSZone *)zone;

@end
