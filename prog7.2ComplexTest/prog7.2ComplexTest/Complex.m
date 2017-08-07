//
//  Complex.m
//  prog7.2ComplexTest
//
//  Created by SUREN HARUTYUNYAN on 18/8/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import "Complex.h"

//This is E7.7 CH7
//implementation section
@implementation Complex

@synthesize real, imaginary;

-(void) print
{
    NSLog(@"%.2f + %.2fi", real, imaginary);
}

-(Complex *) add:(Complex *) complexNum
{
    Complex *result = [[Complex alloc] init];
    result = complexNum;
    result.real += real;
    result.imaginary += imaginary;
    
    return result;
}

@end
