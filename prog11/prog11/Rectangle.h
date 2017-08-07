//
//  Rectangle.h
//  prog11
//
//  Created by SUREN HARUTYUNYAN on 9/11/15.
//  Copyright © 2015 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"

@interface Rectangle : NSObject

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



@end
