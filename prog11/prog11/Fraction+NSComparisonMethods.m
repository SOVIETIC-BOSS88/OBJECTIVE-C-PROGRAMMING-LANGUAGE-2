//
//  Fraction+NSComparisonMethods.m
//  prog11
//
//  Created by SUREN HARUTYUNYAN on 8/9/16.
//  Copyright © 2016 ClassroomM. All rights reserved.
//

#import "Fraction+NSComparisonMethods.h"

@implementation Fraction (NSComparisonMethods)

//This is E11.3 CH11
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
