//
//  Circle.h
//  prog8.2Rectangle
//
//  Created by SUREN HARUTYUNYAN on 17/9/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GraphicObject.h"

@interface Circle : GraphicObject

@property float radius;

//This is E8.5 CH8
-(float) circumference;
-(float) area;

@end
