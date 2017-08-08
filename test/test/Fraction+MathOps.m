//
//  Fraction+MathOps.m
//  prog13
//
//  Created by SUREN HARUTYUNYAN on 7/9/16.
//  Copyright © 2016 ClassroomM. All rights reserved.
//

#import "Fraction+MathOps.h"
#import "Fraction.h"


//This is P11.1 CH11
//MathOps Fraction class category

@implementation Fraction (MathOps)

-(Fraction *) add: (Fraction *) f
{
    //To add two fractions:
    // a/b + c/d = ((a*d) + (b*c) / (b*d))
    
    //result will store the result of the addition
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator   = numerator * f.denominator +
    denominator * f.numerator;
    
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    
    return result;
}

-(Fraction *) subtract: (Fraction *) f
{
    //Here we subtract two fractions
    
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = (self.numerator * f.denominator) -
    (self.denominator * f.numerator);
    
    result.denominator = self.denominator * f.denominator;
    
    
    [result reduce];
    
    return result;
}

-(Fraction *) multiply: (Fraction *) f
{
    //Here we multiply two fractions
    
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.numerator;
    
    result.denominator = denominator * f.denominator;
    
    
    [result reduce];
    
    return result;
}

-(Fraction *) divide: (Fraction *) f
{
    //Here we divide two fractions
    
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.denominator;
    
    result.denominator = denominator * f.numerator;
    
    
    [result reduce];
    
    return result;
}



//This is E11.1 CH11
-(Fraction *) invert: (Fraction *) f
{
    //Here we return an inversion of the reciever, i.e. our num is our denom, and our denom is our num
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = f.denominator;
    result.denominator = f.numerator;
    [result reduce];
    
    return result;
    
}

@end
