//
//  Calculator.m
//  prog11
//
//  Created by SUREN HARUTYUNYAN on 9/11/15.
//  Copyright © 2015 ClassroomM. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

//This is P4.6 CH4

{
    double accumulator;
}

-(void) setAccumulator: (double) value
{
    accumulator = value;
}

-(void) clear
{
    accumulator = 0;
}

-(double) accumulator
{
    return accumulator;
}

-(void) add: (double) value
{
    accumulator += value;
}

-(void) subtract:(double)value
{
    accumulator -= value;
}

-(void) multiply:(double)value
{
    accumulator *= value;
}

-(void) divide:(double)value
{
    //This is P8.8 CH8
    accumulator /= value;
    
    /*
     //This is an add-on after P6.8A CH6
     if ( value != 0 )
     accumulator /= value;
     else
     {
     NSLog(@"Division by zero.");
     accumulator = NAN;
     }
     */
}

//This is E6.4 CH6
-(void) print
{
    NSLog(@"= %f", accumulator);
}

@end

//This is E11.4 CH11
@implementation Calculator (Trig)

-(double) sin
{
    return sin (accumulator);
}

-(double) cos
{
    return  cos (accumulator);
}

-(double) tan
{
    return  tan (accumulator);
}

@end

