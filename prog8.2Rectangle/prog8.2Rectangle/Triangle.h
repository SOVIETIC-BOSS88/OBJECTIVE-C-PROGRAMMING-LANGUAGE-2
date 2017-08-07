//
//  Triangle.h
//  prog8.2Rectangle
//
//  Created by SUREN HARUTYUNYAN on 17/9/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GraphicObject.h"

@interface Triangle : GraphicObject

@property int side1, side2, side3, height, base;

//This is E8.5 CH8
-(int) perimeter;
-(int) area;

@end
