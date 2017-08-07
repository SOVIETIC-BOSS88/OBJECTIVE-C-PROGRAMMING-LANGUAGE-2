//
//  Fraction.h
//  prog11
//
//  Created by SUREN HARUTYUNYAN on 4/10/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;


-(void) print;
-(void)   printWithReduce: (BOOL) reduce;
-(void)   setTo: (int) n over: (int) d;
-(double) convertToNum;
-(void) reduce; //We made it private as in the Page 228-229
-(int) mixed;

@end

//This is P11.1 CH11
@interface Fraction (MathOps)

-(Fraction *)   add:      (Fraction *) f;
-(Fraction *)   subtract: (Fraction *) f;
-(Fraction *)   multiply: (Fraction *) f;
-(Fraction *)   divide:   (Fraction *) f;

//This is E11.1 CH11
-(Fraction *)   invert:   (Fraction *) f;

@end



