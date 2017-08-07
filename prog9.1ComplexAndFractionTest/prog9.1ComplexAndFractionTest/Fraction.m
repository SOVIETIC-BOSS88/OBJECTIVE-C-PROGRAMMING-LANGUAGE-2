//
//  Fraction.m
//  prog9.1ComplexAndFractionTest
//
//  Created by SUREN HARUTYUNYAN on 29/9/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

//For CH9 I have added all the implementation file of the CH7 FractionTest
//You will see the comments belong to the exercices of the chapter

//This is E7.5 CH7, it requires to remove the synthesize directive. @property will generate the accesor methods for us, the only part
//that we will have to modify is the:
@synthesize numerator, denominator;

// This is P9.1 CH9
-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

//This is E7.2 CH7
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


//This is E7.4 CH7
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


//This is E7.3 CH7
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

//Here we add a fraction to the reciever

-(Fraction *) add: (Fraction *) f
{
    //To add two fractions:
    // a/b + c/d = ((a*d) + (b*c) / (b*d))
    
    //result will store the result of the addition
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.denominator +
    denominator * f.numerator;
    
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    
    return result;
}

//This is E9.4 CH9
-(id) addId: (id) f
{
    //To add two fractions:
    // a/b + c/d = ((a*d) + (b*c) / (b*d))
    
    id result = [[Fraction alloc] init];
    
    if ([f isMemberOfClass: [Fraction class]])
    {
        [result setNumerator: (self.numerator * [f denominator]) + (self.denominator + [f numerator])];
        [result setDenominator: (self.denominator * [f denominator])];
    }
    
    return result;
    
}

//This is E7.1 CH7 (it includes subtract, multiply and divide)
-(Fraction *) subtract:(Fraction *)f
{
    //Here we subtract two fractions
    
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.denominator -
    denominator * f.numerator;
    
    result.denominator = denominator * f.denominator;
    
    
    [result reduce];
    
    return result;
}

-(Fraction *) multiply:(Fraction *)f
{
    //Here we multiply two fractions
    
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.numerator;
    
    result.denominator = denominator * f.denominator;
    
    
    [result reduce];
    
    return result;
}

-(Fraction *) divide:(Fraction *)f
{
    //Here we divide two fractions
    
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.denominator;
    
    result.denominator = denominator * f.numerator;
    
    
    [result reduce];
    
    return result;
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
    
    numerator /= u;
    denominator /= u;
}

@end