//
//  Fraction.h
//  prog10
//
//  Created by SUREN HARUTYUNYAN on 30/9/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

//This is E10.3 CH10, only the addCounter part
@property int numerator, denominator, addCounter;

//This is P10.2 CH10

+(Fraction *) allocF; //this one allocates a new Fraction
//and keeps track of how many Fractions it has allocated

+(int) count; //returns the count

//This is P10.1 CH10
-(instancetype) initWith: (int) n over: (int) d;

-(instancetype) init;

//
-(void) print;

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
-(void)   reduce;

//This is E7.4 CH7
-(int) mixed;

@end
