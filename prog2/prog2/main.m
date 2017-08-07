//
//  main.m
//  prog2
//
//  Created by SUREN HARUTYUNYAN on 9/8/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

//First program example

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])

{
    
    @autoreleasepool {
        
        // insert code here... This is the P2.1 and P2.2 CH2
        NSLog(@"Programming is fun!");
        NSLog(@"Programming in Objective-C is even more fun!");
        
        //This id P2.3 CH2
        NSLog(@"Testing...\n..1\n...2\n....3");
        
        
        //This is P2.4 CH2
        int sum0;
        
        
        sum0 = 50 + 25;
        NSLog(@"The sum of 50 and 25 is %i", sum0);
        
        
        //This is P2.5 CH2
        int value1, value2, sum1;
        
        
        value1 = 50;
        value2 = 25;
        sum1 = value1 + value2;
        
        NSLog(@"The sum of %i and %i is %i", value1, value2, sum1);
        
        //E1 CH2 consisted of writing all the above 5 programs
        
        //This is E2.2 CH2
        NSLog(@"In Objective-C, lowercase letters are significant\n main is where progra execution begins.\n Open and closed braces enclose program statements in a routine.\n All program statements must be terminated by a semicolon.");
        
        
        //This is E2.3 CH2
        int i;
        i = 1;
        NSLog(@"Testing...");
        NSLog(@"....%i", i);
        NSLog(@"...%i", i + 1);
        NSLog(@"..%i", i + 2);
        
        
        //This is E2.4 CH2
        int value3, value4, subtraction1;
        
        
        value3 = 87;
        value4 = 15;
        subtraction1 = value3 - value4;
        
        NSLog(@"The subtraction of %i from %i is %i", value4, value3, subtraction1);
        
        //Other way of solving E2.4 CH2
        int ii;
        ii = 87;
        NSLog(@"%i", ii);
        NSLog(@"The subtraction of 15 from 87 is %i", ii - 15);
        
        
        //This is E2.5 CH2
        /* The book code included this code:
         #import <Foundation/Foundation.h>
         
         int main(int argc, const char * argv[])
         {
         @autoreleasepool
         { */
        
        //This part is the code that I corrected
        int sum2;
        
        
        //Compute result
        sum2 = 25 + 37 - 19;
        //Display results
        NSLog(@"The answer is %i", sum2);
        
        
        //This is E2.6 from CH2
        int answer, result;
        
        answer = 100;
        result = answer - 10;
        NSLog(@"The result is %i\n", result + 5);
        
    }
    
    return 0;
}
