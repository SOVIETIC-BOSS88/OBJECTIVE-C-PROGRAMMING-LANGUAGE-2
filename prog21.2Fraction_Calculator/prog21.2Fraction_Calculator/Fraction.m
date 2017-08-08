//
//  Fraction.m
//  prog21.2Fraction_Calculator
//
//  Created by SUREN HARUTYUNYAN on 8/8/17.
//  Copyright © 2017 ClassroomM. All rights reserved.
//

#import "Fraction.h"

//We made it private as in the Page 228-229
//@interface Fraction ()

//-(void) reduce;

//@end

//This is E13.2 CH13
/*
 static int gcd (int u, int v)
 {
 int temp;
 
 while (v != 0)
 {
 temp = u % v;
 u = v;
 v = temp;
 }
 
 return u;
 }
 */

//Defining the methods for the Fraction class
@implementation Fraction

@synthesize numerator, denominator;

//This is P18.3 CH18
-(id) copyWithZone: (NSZone *) zone
{
    Fraction *newFract = [[Fraction allocWithZone: zone] init];
    
    [newFract setTo: numerator over: denominator];
    return newFract;
}

-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

-(void) setTo:(int) n over:(int) d
{
    numerator = n;
    denominator = d;
}

//This is P21.2 CH21
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

/*
 -(void) printWithReduce: (BOOL) reduce
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
 */

-(double) convertToNum
{
    if (denominator != 0)
        return (double) numerator /  denominator;
    else
        return NAN;
}

/*
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
 */


//This is E13.2 CH13
/*
 - (void) reduce
 {
 int greatComDiv = gcd (numerator, denominator);
 
 if (denominator > 0 )
 {
 numerator   /= greatComDiv;
 denominator /= greatComDiv;
 NSLog(@"This is working.");
 }
 else
 NSLog(@"This is not working");
 }
 */

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

//This is E15.7 CH15
-(NSString *) description
{
    return [NSString stringWithFormat: @"%i/%i", numerator, denominator];
}


//This is P21.2 CH21
-(NSString *) convertToString
{
    if (numerator == denominator)
        if (numerator == 0)
            return @"0";
        else
            return @"1";
        else if (denominator == 1)
            return [NSString stringWithFormat:@"%i", numerator];
        else
            return [NSString stringWithFormat:@"%i/%i", numerator, denominator];
}

-(void) reduce
{
    int u = numerator;
    int v = denominator;
    int temp;
    
    if (u == 0)
        return;
    else if (u < 0)
        u = -u;
    
    while (v != 0)
    {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    numerator /= u;
    denominator /= u;
}

//@end

//This is P11.1 CH11
//MathOps Fraction class category

//@implementation Fraction (MathOps)
/*
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
 */

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
