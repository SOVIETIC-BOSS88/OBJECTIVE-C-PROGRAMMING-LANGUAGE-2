//
//  main.m
//  prog7.2ComplexTest
//
//  Created by SUREN HARUTYUNYAN on 18/8/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

/*
 #import <Foundation/Foundation.h>
 #import "Complex.h"
 */

//This is E7.6 CH4
/*
 //--@interface section--
 
 @interface Complex: NSObject
 
 -(void) print; // display as a + bi
 -(void) setReal: (double) a;
 -(void) setImaginary: (double) b;
 -(double) real;
 -(double) imaginary;
 -(Complex *) add: (Complex *) complexNum;
 
 @end
 */


/*
 //This is E7.6 CH7
 //implementation section
 @implementation Complex
 
 {
 double real;
 double imaginary;
 }
 
 -(void) print
 {
 NSLog(@"%.2f + %.2fi", real, imaginary);
 }
 
 -(void) setReal: (double) a
 {
 real = a;
 }
 
 -(void) setImaginary: (double) b
 {
 imaginary = b;
 }
 
 -(double) real
 {
 return real;
 }
 
 -(double) imaginary
 {
 return imaginary;
 }
 
 -(Complex *) add:(Complex *)complexNum
 {
 Complex *result = [[Complex alloc] init];
 result = complexNum;
 result.real += real;
 result.imaginary += imaginary;
 
 return result;
 }
 
 @end
 */

#import <Foundation/Foundation.h>
#import "Complex.h"

//This is E7.6 and E7.7 CH7
//--Program section--

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        //This is E6 CH4
        Complex *aComplex = [[Complex alloc] init];
        Complex *bComplex = [[Complex alloc] init];
        Complex *result;
        
        [aComplex setReal:1.2];
        [aComplex  setImaginary:3.4];
        [aComplex print];
        
        NSLog(@"+");
        
        //We set bComplex fraction with the dot operator
        bComplex.real = 5.6;
        bComplex.imaginary = 7.8;
        [bComplex print];
        
        NSLog(@"=");
        
        result = [aComplex add: bComplex];
        [result print];
    }
    return 0;
}


