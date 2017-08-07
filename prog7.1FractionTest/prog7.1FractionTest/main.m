//
//  main.m
//  prog7.1FractionTest
//
//  Created by SUREN HARUTYUNYAN on 18/8/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //This is P7.2 CH7
        /*
         Fraction *myFraction = [[Fraction alloc] init];
         
         //set fraction to 1/ 3 using the dot operator
         
         myFraction.numerator = 1;
         myFraction.denominator = 3;
         
         //Display the fraction's nuemrator and denominator
         
         NSLog(@"The numerator is %i, and the denominator is %i",
         myFraction.numerator, myFraction.denominator);
         */
        
        //This is a test of P7.2 and P7.3 CH7
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        
        //This is P7.5 CH7
        Fraction *resultFraction;
        
        //This is P7.2 CH7
        /*
         [aFraction setTo: 100 over: 200];
         [aFraction print];
         
         [aFraction setTo: 1 over: 3];
         [aFraction print];
         */
        
        //Set two fractions to 1/4 and 1/2 and add them together
        
        [aFraction setTo:2 over: 3];  //set 1st fraction to 1/4
        [bFraction setTo:3 over: 3];  //set 2nd fraction to 1/2
        
        //Print the results
        /*
         [aFraction print];
         NSLog(@"+");
         [bFraction print];
         NSLog(@"=");
         
         //This is P7.5 CH7
         resultFraction = [aFraction add: bFraction];
         [resultFraction print];
         */
        
        //This E7.2 CH7
        //Print the results
        [aFraction printWithReduce:NO];
        NSLog(@"+");
        [bFraction printWithReduce:NO];
        NSLog(@"=");
        
        resultFraction = [aFraction add: bFraction];
        [resultFraction printWithReduce:NO];
        NSLog(@"\n");
        
        [resultFraction printWithReduce:YES];
        
        //I have tested E7.3 CH7 with negative numbers, works perfectly
        
        //This is P7.3 CH7
        /*
         [aFraction add: bFraction];
         */
        
        //This is P7.4 CH7
        //Reduce the result of the addition and print the result
        
        [aFraction reduce];
        [aFraction print];
        
        
    }
    
    return 0;
}
