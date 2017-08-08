//
//  Fraction.m
//  prog13
//
//  Created by SUREN HARUTYUNYAN on 11/7/16.
//  Copyright © 2016 ClassroomM. All rights reserved.
//

#import "Fraction.h"

//We made it private as in the Page 228-229
@interface Fraction ()

- (void) reduce;

@end

//This is E13.2 CH13
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


-(void) printWithReduce:(BOOL) reduce
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



//This is E11.2 CH11
@implementation Fraction (Comparison)

/*
 -(BOOL) isEqualTo: (Fraction *) f
 {
 BOOL isEqualTo = YES;
 
 if
 ((self.numerator * f.denominator) == (self.denominator * f.numerator))
 return isEqualTo;
 
 else
 {
 BOOL isEqualTo = NO;
 return isEqualTo;
 }
 
 }
 */


-(int) compare: (Fraction *) f
{
    int compare = 0;
    
    //Here is we subtract fraction B from, and we get a result that is less that a 1, then B is greater than A
    
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = (self.numerator * f.denominator) - (self.denominator * f.numerator);
    result.denominator = (self.denominator * f.denominator);
    
    if (result.numerator == 0) //If A - B = 0, they are equal
        compare = 0;
    
    if ((result.numerator > 0 && result.denominator > 0) || // Here is the numerator and denominator result in equal signs, then A > B
        (result.numerator < 0 && result.denominator < 0))
        compare = 1;
    
    if ((result.numerator > 0 && result.denominator < 0) || // Here is the numerator and denominator result in opposite signs, then A < B
        (result.numerator < 0 && result.denominator > 0))
        compare = -1;
    
    return compare; //Here it will return or 0, 1, -1
    
}

@end

//This is E11.3 CH11
@implementation Fraction (NSComparisonMethods)

-(BOOL) isEqualTo:(Fraction *) f //Remeber this conflicts with the isEqualTo method from the Comparison category
{
    [self reduce];
    [f reduce];
    if ((self.numerator == f.numerator) && (self.denominator == f.denominator))
    {
        return (BOOL) 1;
    }
    else
        return (BOOL) 0;
}

-(BOOL) isLessThanOrEqualTo: (Fraction *) f
{
    if ([self compare:f] <= 0)
        return (BOOL) 1;
    else
        return (BOOL) 0;
}

-(BOOL) isLessThan: (Fraction *) f
{
    if ([self compare:f] < 0)
        return (BOOL) 1;
    else
        return (BOOL) 0;
}

-(BOOL) isGreaterThanOrEqualTo: (Fraction *) f
{
    if ([self compare: f] >= 0)
        return (BOOL) 1;
    else
        return (BOOL) 0;
}

-(BOOL) isGreaterThan: (Fraction *) f
{
    if ([self compare: f] > 0)
        return (BOOL) 1;
    else
        return (BOOL) 0;
}

-(BOOL) isNotEqualTo: (Fraction *) f
{
    if ([self compare:f] != 0)
        return (BOOL) 1;
    else
        return (BOOL) 0;
}

@end
