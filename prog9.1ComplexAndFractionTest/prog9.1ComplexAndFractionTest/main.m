//
//  main.m
//  prog9.1ComplexAndFractionTest
//
//  Created by SUREN HARUTYUNYAN on 29/9/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Complex.h"
#import "Fraction.h"
#import "Rectangle.h"
#import "XYPoint.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool
    
    {
        //This is P9.1 CH9
        
        //Shared Method name: Polymorphism
        
        Fraction *f1 = [[Fraction alloc] init];
        Fraction *f2 = [[Fraction alloc] init];
        Fraction *fracResult;
        
        Complex *c1 = [[Complex alloc] init];
        Complex *c2 = [[Complex alloc] init];
        Complex *compResult;
        
        [f1 setTo: 1 over: 10];
        [f2 setTo: 2 over: 15];
        
        [c1 setReal: 18.0 andImaginary: 2.5];
        [c2 setReal: -5.0 andImaginary: 3.2];
        
        //We now add and print 2 complex numbers
        
        [c1 print]; NSLog(@"        +"); [c2 print];
        NSLog(@"---------");
        compResult = [c1 add: c2];
        [compResult print];
        NSLog(@"\n");
        
        //This is E9.1 CH9
        // [compResult reduce];
        
        //We now add and print 2 factions
        
        [f1 print]; NSLog(@"   +"); [f2 print];
        NSLog(@"----");
        fracResult = [f1 add: f2];
        [fracResult print];
        
        //I added this for further clarity for P9.2 CH9
        NSLog(@"\n");
        
        //This is P9.2 CH9
        
        //Illustrates Dynamic Typing and Binding
        
        id dataValue;
        Fraction *f3 = [[Fraction alloc] init];
        Complex  *c3 = [[Complex alloc] init];
        
        //This is E9.3 CH9
        XYPoint *xyp3  = [[XYPoint alloc] init];
        
        [f3 setTo: 2 over: 5];
        [c3 setReal: 10.0 andImaginary: 2.5];
        
        //This is E9.3 CH9
        [xyp3 setX: 5 andY: 10];
        
        //First dataValue gets fraction
        
        dataValue = f3;
        [dataValue print];
        
        //Now dataValue gets complex number
        
        dataValue = c1;
        [dataValue print];
        
        //This is E9.3 CH9
        //And now dataValue gets the XYPoint
        
        dataValue = xyp3;
        [dataValue print];
        
        //This is E9.2 CH9
        dataValue = [[Rectangle alloc] init];
        
        //This is E9.4 CH9
        id dataValue1;
        id dataValue2;
        id result;
        
        dataValue1 = f1;
        dataValue2 = f2;
        NSLog(@"%i/%i + %i/%i =", [dataValue1 numerator], [dataValue1 denominator], [dataValue2 numerator], [dataValue2 denominator]);
        result = [dataValue1 add: dataValue2];
        [result print];
        
        dataValue1 = c1;
        dataValue2 = c2;
        NSLog(@"(%g + %g) + (%g + %g) =", [dataValue1 real], [dataValue1 imaginary], [dataValue2 real], [dataValue2 imaginary]);
        result = [dataValue1 add: dataValue2];
        [result print];
        
        //This is P9.4 CH9
        /*
         Fraction *f = [[Fraction alloc] init];
         [f noSuchMethod];
         NSLog(@"Execution continues!");
         */
        
        //This is P9.5 CH9
        NSArray *myArray = [NSArray array];
        
        @try
        {
            [myArray objectAtIndex: 2];
        }
        
        @catch (NSException *exception)
        {
            NSLog(@"Caught %@%@", exception.name, exception.reason);
        }
        
        NSLog(@"Execution continues");
        
        //I added this for further clarity for P9.5 CH9
        NSLog(@"\n");
        
        //This is P9.5 CH9
        
        Fraction *fraction  = [[Fraction alloc] init];
        Complex  *complex   = [[Complex alloc] init];
        id        number    = [[Complex alloc] init];
        
        
        //isMemberOf:
        
        if ( [fraction isMemberOfClass: [Complex class]] == YES )
            NSLog(@"fraction is a member of Complex class");
        
        if ( [complex isMemberOfClass: [NSObject class]] == YES )
            NSLog(@"complex is a member of NSObject class");
        
        
        //isKindOf:
        
        if ( [complex isKindOfClass: [NSObject class]] == YES )
        NSLog(@"complex is a kind of NSObject");
        
        if ( [fraction isKindOfClass: [Fraction class]] == YES )
        NSLog(@"fraction is a kind of Fraction");
        
        
        //respondsTo:
        
        if ( [fraction respondsToSelector: @selector (print)] == YES)
            NSLog(@"fraction responds to print method");
        
        if ( [complex respondsToSelector: @selector (print)] == YES)
            NSLog(@"complex responds to print method");
        
        
        //instancesRespondTo:
        
        if ( [Fraction instancesRespondToSelector: @selector (print)] == YES)
            NSLog(@"Instances of Fraction respond to print method");
        
        //respondsTo:
        
        if ( [number respondsToSelector: @selector (print)] == YES)
            NSLog(@"number responds to print method");
        
        
        //isKindOf:
        
        if ( [number isKindOfClass: [Complex class]] == YES )
        NSLog(@"number is a kind of Complex");
        
        
        //respondsTo:
        
        if ( [[number class] respondsToSelector: @selector (alloc)] == YES)
            NSLog(@"complex responds to alloc method");
        
    }
    return 0;
}
