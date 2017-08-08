//
//  Fraction.h
//  prog21.2Fraction_Calculator
//
//  Created by SUREN HARUTYUNYAN on 8/8/17.
//  Copyright © 2017 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Fraction : NSObject <NSCopying>

@property int numerator, denominator;

//This is P18.3 CH18
-(id) copyWithZone: (NSZone *) zone;

-(void) print;
-(void)   setTo: (int) n over: (int) d;

//This is P21.2 CH21
-(Fraction *)   add:      (Fraction *) f;
-(Fraction *)   subtract: (Fraction *) f;
-(Fraction *)   multiply: (Fraction *) f;
-(Fraction *)   divide:   (Fraction *) f;

//-(void) printWithReduce: (BOOL) reduce;
//-(void) printWithReduce: (BOOL) reduce;

-(double) convertToNum;
//-(void) reduce; //We made it private as in the Page 228-229

//This is E13.2 CH13
//-(void) reduce;
-(int) mixed;

/*
 -Where do you think you should place the function definition?
 Define in the Fraction implementation file and make it static.
 
 -Are there any benefits of making the function static?
 It cannot be accessed outside the file that doesn't need the code thus preventing any future errors (not sure).
 
 -Which approach do you think is better, using a gcd function or incorporating the code directly into the method as you did previously?
 Using a gcd function.
 
 -Why?
 Reusability. some methods other than "reduce" might need the "gcd" function thus reducing lines of codes
 */

//This is E15.7 CH15
-(NSString *) description;

//This is P21.2 CH21
-(NSString *) convertToString;
-(void) reduce;

//@end

//This is P11.1 CH11
//@interface Fraction (MathOps)

//-(Fraction *)   add:      (Fraction *) f;
//-(Fraction *)   subtract: (Fraction *) f;
//-(Fraction *)   multiply: (Fraction *) f;
//-(Fraction *)   divide:   (Fraction *) f;

//This is E11.1 CH11
-(Fraction *)   invert:   (Fraction *) f;


@end
