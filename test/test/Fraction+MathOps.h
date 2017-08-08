//
//  Fraction+MathOps.h
//  prog13
//
//  Created by SUREN HARUTYUNYAN on 7/9/16.
//  Copyright © 2016 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

//This is P11.1 CH11
@interface Fraction (MathOps)

-(Fraction *)   add:      (Fraction *) f;
-(Fraction *)   subtract: (Fraction *) f;
-(Fraction *)   multiply: (Fraction *) f;
-(Fraction *)   divide:   (Fraction *) f;

//This is E11.1 CH11
-(Fraction *)   invert:   (Fraction *) f;

@end