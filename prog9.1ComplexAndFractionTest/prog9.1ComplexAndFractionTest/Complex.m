//
//  Complex.m
//  prog9.1ComplexAndFractionTest
//
//  Created by SUREN HARUTYUNYAN on 29/9/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import "Complex.h"

//This is P9.1 CH9

@implementation Complex

@synthesize real, imaginary;

-(void) print
{
    NSLog(@"%g + %gi", real, imaginary);
}

-(void) setReal: (double) a andImaginary: (double) b
{
    real = a;
    imaginary = b;
}

-(Complex *) add:(Complex *) f //Here istead of "f" I would rather put a "c"
{
    Complex *result = [[Complex alloc] init];
    
    result.real = real + f.real;
    result.imaginary =  imaginary + f.imaginary;
    
    return result;
}

//This is E9.4 CH9
-(id) addId: (id) f
{
    id result = [[Complex alloc] init];
    
    if ([f isMemberOfClass: [Complex class]])
    {
        [result setReal: (self.real + [f real]) andImaginary: (self.imaginary + [f imaginary])];
    }
    
    return result;
}

@end
