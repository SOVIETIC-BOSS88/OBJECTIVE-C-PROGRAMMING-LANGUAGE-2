//
//  Fraction.m
//  prog11
//
//  Created by SUREN HARUTYUNYAN on 4/10/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import "Fraction.h"

//We made it private as in the Page 228-229
/*
@interface Fraction ()

-(void) reduce;

@end
*/

//Defining the methods for the Fraction class
@implementation Fraction

@synthesize numerator, denominator;

-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

/*
 -(void) printWithReduce: (BOOL) reduce
 {
 if (reduce)
 {
 [self reduce];
 NSLog(@"%i/%i", numerator, denominator);
 }
 else
 NSLog(@"%i/%i", numerator, denominator);
 }
 */

-(void) printWithReduce:(BOOL)reduce
{
    int bigNumber;
    [self reduce];
    bigNumber = [self mixed];   // If the numerator is bigger than denominator then
    //there will be mixed number e.g: 4/3 --> 1 1/3
    // if the numerator value is 0, it means the result will be 0
    
    if (numerator == 0 && bigNumber == 0)
    {
        NSLog(@"0");
    }
    
    else if (numerator == 0 && bigNumber != 0)
    {
        NSLog(@"%i", bigNumber);
    }
    
    else if (bigNumber == 0)
    {
        NSLog(@"%i/%i",  numerator, denominator);
    }
    
    else
    {
        NSLog(@"%i %i/%i", bigNumber, numerator, denominator);
    }
}

-(double) convertToNum
{
    if (denominator != 0)
        return (double) numerator /  denominator;
    else
        return NAN;
}

-(void) setTo:(int)n over:(int)d
{
    numerator = n;
    denominator = d;
}

-(void) reduce
{
    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v != 0)
    {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    if (u < 0)
    {
        numerator /= -u;
        denominator /= -u;
    }
    
    else
    {
        numerator /= u;
        denominator /= u;
    }
}

-(int) mixed
{
    int bigNumber = 0;
    while (numerator > denominator)
    {
        numerator = numerator - denominator;
        bigNumber += 1;
    }
    return bigNumber;
}

@end


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






