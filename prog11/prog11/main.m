//
//  main.m
//  prog11
//
//  Created by SUREN HARUTYUNYAN on 4/10/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Calculator.h"
#import "Square.h"
#import "Fraction+Comparison.h"
#import "Fraction+NSComparisonMethods.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //This is P11.1 CH11
        Fraction *a = [[Fraction alloc] init];
        Fraction *b = [[Fraction alloc] init];
        Fraction *result; //Go to Page 151, P7.5 CH7 for more explanation on the Fraction *result thing
        
        [a setTo: 1 over: 3];
        [b setTo: 2 over: 5];
        
        [a print]; NSLog(@"  +"); [b print]; NSLog(@"-----");
        result = [a add: b];
        [result print];
        NSLog(@"\n");
        
        [a print]; NSLog(@"  -"); [b print]; NSLog(@"-----");
        result = [a subtract: b];
        [result print];
        NSLog(@"\n");
        
        [a print]; NSLog(@"  *"); [b print]; NSLog(@"-----");
        result = [a multiply: b];
        [result print];
        NSLog(@"\n");
        
        [a print]; NSLog(@"  /"); [b print]; NSLog(@"-----");
        result = [a divide: b];
        [result print];
        NSLog(@"\n");
        
        //This is E11.1 CH11
        [a print]; NSLog(@"Inverted is");
        result = [a invert: a];
        [result print];
        NSLog(@"\n");
        
        [b print]; NSLog(@"Inverted is");
        result = [b invert: b];
        [result print];
        NSLog(@"\n");
        
        [result print]; NSLog(@"Inverted is");
        result = [result invert: result];
        [result print];
        NSLog(@"\n");
        
        //This is E11.2 CH11
        
        BOOL isEqualTo;
        int compare;
        
        Fraction *c = [[Fraction alloc] init];
        Fraction *d = [[Fraction alloc] init];
        
        [c setTo: 2 over: 1];
        [d setTo: 1 over: 3];
        
        isEqualTo = [c isEqualTo:d];
        if (isEqualTo == YES)
        {
            [c print]; NSLog(@"is equal to");
            [d print];
            NSLog(@"\n");
        }
        
        else
        {
            [c print]; NSLog(@"is not equal to");
            [d print];
            NSLog(@"\n");
            
        }
        
        compare = [c compare: d];
        
        if (compare == 0)
        {
            [c print]; NSLog(@"is equal to");
            [d print];
            NSLog(@"\n");
        }
        
        if (compare == 1)
        {
            [c print]; NSLog(@"is greater than");
            [d print];
            NSLog(@"\n");
        }
        
        if (compare == -1)
        {
            [c print]; NSLog(@"is less than");
            [d print];
            NSLog(@"\n");
        }
        
        //This is E11.3 CH11
        
        //Fraction *a = [[Fraction alloc] init];
        //Fraction *b = [[Fraction alloc] init];
        
        //[a setTo: 1 over: 3];
        //[b setTo: 2 over: 5];
        
        NSLog(@"Fraction a is (%i/%i) and Fraction b is (%i/%i)", a.numerator, a.denominator, b.numerator, b.denominator);
        NSLog(@"isLessThan = %i", [a isLessThan:b]);
        NSLog(@"isLessThankOrEqualTo = %i", [a isLessThanOrEqualTo:b]);
        NSLog(@"isEqualTo = %i", [a isEqualTo:b]);
        NSLog(@"isNotEqualTo = %i", [a isNotEqualTo:b]);
        NSLog(@"isGreaterThanOrEqualTo = %i", [a isGreaterThanOrEqualTo:b]);
        NSLog(@"isGreaterThan = %i", [a isGreaterThan:b]);
        
        //This is E11.4 CH11
        
        double value;
        char operator;
        
        Calculator *deskCalc = [[Calculator alloc] init];
        
        NSLog(@"Type in your expression.");
        scanf("%lf %c", &value, &operator);
        
        [deskCalc setAccumulator: value];
        
        switch (operator)
        {
            case 's':
                NSLog(@"Sine from %g = %g", value, [deskCalc sin]);
                break;
                
            case 'c':
                NSLog(@"Cosine from %g = %g", value, [deskCalc cos]);
                break;
                
            case 't':
                NSLog(@"Tangent from %g = %g", value, [deskCalc tan]);
                break;
                
            default:
                NSLog(@"Unknown operator.");
                break;
        }
        
        Square *mySquare1, *mySquare2;
        
        mySquare1 = [[Square alloc] initWithSide:4];
        mySquare2 = [[Square alloc] init];
        
        NSLog(@"Square1 side: %i, area: %i, perimeter: %i", mySquare1.side, [mySquare1 area], [mySquare1 perimeter]);
        
        mySquare2.side = 7;
        
        NSLog(@"Square2 side: %i, area: %i, perimeter: %i", mySquare2.side, [mySquare2 area], [mySquare2 perimeter]);
        
    }
    return 0;
}
