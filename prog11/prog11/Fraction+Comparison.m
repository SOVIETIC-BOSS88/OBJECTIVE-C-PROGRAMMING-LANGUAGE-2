//
//  Fraction+Comparison.m
//  prog11
//
//  Created by SUREN HARUTYUNYAN on 8/9/16.
//  Copyright © 2016 ClassroomM. All rights reserved.
//

#import "Fraction+Comparison.h"

@implementation Fraction (Comparison)

//This is E11.2 CH11
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
    
    //Here is we subtract fraction B from, and we get a result that is less that a 1, then B is greater that A
    
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

