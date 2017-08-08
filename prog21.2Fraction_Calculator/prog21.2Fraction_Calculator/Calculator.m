//
//  Calculator.m
//  prog21.2Fraction_Calculator
//
//  Created by SUREN HARUTYUNYAN on 8/8/17.
//  Copyright © 2017 ClassroomM. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

//This is P21.2 CH21
@synthesize operand1, operand2, accumulator;


-(id) init
{
    self = [super init];
    
    if (self)
    {
        operand1 = [[Fraction alloc] init];
        operand2 = [[Fraction alloc] init];
        accumulator = [[Fraction alloc] init];
    }
    
    return self;
}

-(void) clear
{
    accumulator.numerator = 0;
    accumulator.denominator = 0;
}

-(Fraction *) performOperation: (char) op
{
    Fraction *result;
    
    switch (op)
    {
        case '+':
            result = [operand1 add: operand2];
            break;
        case '-':
            result = [operand1 subtract: operand2];
            break;
        case '*':
            result = [operand1 multiply: operand2];
            break;
        case '/':
            result = [operand1 divide: operand2];
            break;
    }
    accumulator.numerator = result.numerator;
    accumulator.denominator = result.denominator;
    
    return accumulator;
}


@end

