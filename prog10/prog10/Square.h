//
//  Square.h
//  prog10
//
//  Created by SUREN HARUTYUNYAN on 2/10/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"


@interface Square : Rectangle

/*
 -(void) setSide: (float) s;
 */

/*
 -(float)  side;
 */

//This is only for E10.1 CH10
-(void) setSide: (int) s;
-(int) side;

//This is E10.2 CH10
-(id) initWithSide: (int) side;



@end