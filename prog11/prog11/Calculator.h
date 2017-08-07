//
//  Calculator.h
//  prog11
//
//  Created by SUREN HARUTYUNYAN on 9/11/15.
//  Copyright © 2015 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

//This is the P6.8 of CH6
//Implementing a calculator class
//Program to evaluate simple expressions of the from:
//                                                   number operator number

//accumulator methods
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;

//arithmetic methods
-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;
-(void) print;

@end

//This is E11.3 CH11
@interface Calculator (Trig)

-(double) sin;
-(double) cos;
-(double) tan;

@end











