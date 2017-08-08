//
//  Calculator.h
//  prog21.2Fraction_Calculator
//
//  Created by SUREN HARUTYUNYAN on 8/8/17.
//  Copyright © 2017 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Fraction.h"


@interface Calculator : NSObject

//This is P21.2 CH21
@property (strong, nonatomic) Fraction *operand1;
@property (strong, nonatomic) Fraction *operand2;
@property (strong, nonatomic) Fraction *accumulator;

-(id) init;
-(Fraction *) performOperation: (char) op;
-(void) clear;



@end
