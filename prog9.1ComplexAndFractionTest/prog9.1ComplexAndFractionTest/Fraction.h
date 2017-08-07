//
//  Fraction.h
//  prog9.1ComplexAndFractionTest
//
//  Created by SUREN HARUTYUNYAN on 29/9/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

//For CH9 I have added all the interface file of the CH7 FractionTest
//You will see the comments belong to the exercices of the chapter


@property int numerator, denominator;

//This is P9.1 CH9
-(void) print;

//This is E9.4 CH9
-(id) addId: (id) f;

//This is E7.2 CH7
-(void)   printWithReduce: (BOOL) reduce;

//
-(void)   setTo: (int) n over: (int) d;
-(double) convertToNum;
-(Fraction *)   add: (Fraction *) f;

//This is E7.1 CH7
-(Fraction *)   subtract: (Fraction *) f;
-(Fraction *)   multiply: (Fraction *) f;
-(Fraction *)   divide: (Fraction *) f;

//
-(void) reduce;

//This is E7.4 CH7
-(int) mixed;

@end
