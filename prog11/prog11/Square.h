//
//  Square.h
//  prog11
//
//  Created by SUREN HARUTYUNYAN on 9/11/15.
//  Copyright © 2015 ClassroomM. All rights reserved.
//

//This is E11.5 CH11
#import <Foundation/Foundation.h>
#import "Rectangle.h"

//This is E11.5 CH11
@interface Square : NSObject

-(id) init;
-(instancetype) initWithSide: (int) s;
-(void) setSide: (int) s;
-(int) side;
-(int) area;
-(int) perimeter;

@end


