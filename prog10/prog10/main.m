//
//  main.m
//  prog10
//
//  Created by SUREN HARUTYUNYAN on 30/9/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Rectangle.h"
#import "Square.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        //This is P10.1 CH10
        /*
         Fraction *a, *b;
         
         
         a = [[Fraction alloc] initWith: 1 over: 3];
         b = [[Fraction alloc] initWith: 3 over: 7];
         
         [a print];
         [b print];
         */
        
        //This is P10.2 CH10
        
        Fraction *a, *b, *c;
        
        NSLog(@"Fractions allocated: %i", [Fraction count]);
        
        a = [[Fraction allocF] init];
        
        b = [[Fraction allocF] init];
        
        c = [[Fraction allocF] init];
        
        NSLog(@"Fractions allocated: %i", [Fraction count]);
        
        //This is P10.3 CH10
        
        //print the number of days in a month
        
        enum month { january = 1, february, march, april, may, june,
            july, august, september, october, november,
            december };
        
        enum month amonth;
        int        days;
        
        NSLog(@"Enter a month number:");
        scanf("%i", &amonth);
        
        switch (amonth)
        {
            case january:
            case march:
            case may:
            case july:
            case august:
            case october:
            case december:
                
                days = 31;
                break;
                
            case april:
            case june:
            case september:
            case november:
                
                days = 30;
                break;
                
            case february:
                
                days = 28;
                break;
                
            default:
                NSLog(@"Bad month number");
                break;
        }
        
        if ( days != 0 )
            NSLog(@"Number of days is %i", days);
        
        
        if ( amonth == february)
            NSLog(@"...or 29 if it's a leap year");
        
        
        //This is P10.4 CH10
        
        //Bitwise operators illustrated
        
        unsigned int w1 = 0xA0A0A0A0, w2 = 0xFFFF0000,
        w3 = 0x00007777;
        
        NSLog(@"%x %x %x", w1 & w2, w1 | w2, w1 ^ w2);
        
        NSLog(@"%x %x %x", ~w1, ~w2, ~w3);
        
        NSLog(@"%x %x, %x", w1 ^ w1, w1 & ~w2, w1 | w2 | w3);
        
        NSLog(@"%x %x", w1 | (w2 & w3), w1 | (w2 & ~w3));
        
        NSLog(@"%x %x", ~(~w1 & ~w2), ~(~w1 | ~w2));
        
        //This is E10.1 CH10
        Rectangle *myRect;
        
        myRect = [[Rectangle alloc] initWithWidth: 20 andHeight: 40];
        
        [myRect print];
        
        //This is E10.2 CH10
        Square *mySquare;
        
        mySquare = [[Square alloc] initWithSide: 80];
        
        [mySquare print];
        
        
        //This is P10.2 CH10
        
        Fraction *myFract;
        
        myFract = [[Fraction allocF] init];
        NSLog(@"Fractions added: %i", [myFract addCounter]);
        
        [myFract setTo: 2 over: 4];
        
        [myFract add: myFract];
        [myFract add: myFract];
        
        NSLog(@"Fractions added: %i", [myFract addCounter]);
        
        //This is E10.4 CH110
        
        typedef enum { Sunday = 7, Monday = 1, Tuesday, Wednesday, Thursday, Friday, Saturday } Days;
        
        Days afterWeekend = 3;
        
        if (afterWeekend == Wednesday)
        {
            NSLog(@"Program works.");
        }
        
        else
            NSLog(@"Program doesn't work.");
        
        //This is E10.5 CH10
        
        typedef Fraction *FractionObject;
        
        FractionObject f1 = [[Fraction alloc] init],
        f2 = [[Fraction alloc] init];
        
        
        [f1 setTo:1 over:2];
        [f2 setTo: 2 over:4];
        
        NSLog(@"First Fraction (as objectf) is %i/%i", f1.numerator, f1.denominator);
        NSLog(@"Second Fraction (as object) is %i/%i", f2.numerator, f2.denominator);
        
        //This is E10.6 CH10
        
        float      f = 1.00;
        short int  i = 100;
        long int   l = 500L;
        double     d = 15.00;
        
        NSLog(@"f + i = %f typefloat", f + i);
        NSLog(@" l / d = %g type double", l / d);
        NSLog(@" i / l + f = %f type float", i / l +f);
        NSLog(@"l * i =  %ld type long", l * i);
        NSLog(@"f / 2 =  %f type float", f / 2);
        NSLog(@"i / (d + f) = %g type double", i / (d + f));
        NSLog(@"l / (i * 2.0) = %g type double", l / (i * 2.0));
        NSLog(@"l + i / (double) l = %g type double", l + i / (double) l);
    }
    return 0;
}
