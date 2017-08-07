//
//  main.m
//  prog4
//
//  Created by SUREN HARUTYUNYAN on 10/8/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

//This is the P4.6 of CH4
//Implementing a calculator class


#import <Foundation/Foundation.h>

//--@interface section--
//This interface section of P4.6 CH4--

@interface Calculator: NSObject

//accumulator methods

-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;

//arithmetic methods
-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;

//This is E4.9 CH4 other methods
-(double) changeSign; // change sign of accumulator
-(double) reciprocal; // 1/accumulator
-(double) xSquared; //accumulator squared

//This is E4.10 CH4 final methods for the memory capability
-(double) memoryClear; // clear memory
-(double) memoryStore; //set memory to accumulator
-(double) memoryRecall; // set accumulator to memory
-(double) memoryAdd: (double) value; //add value into memory
-(double) memorySubtract: (double) value; //subtract value from memory

@end

//This is E4.6 CH4
//--@interface section--

@interface Complex: NSObject

-(void) print; // display as a + bi
-(void) setReal: (double) a;
-(void) setImaginary: (double) b;
-(double) real;
-(double) imaginary;

@end

//This is E4.7 CH4
//--@interface section--

@interface Rectangle: NSObject

-(void) setWidth: (int) w;
-(void) setHeight: (int) h;
-(int) width;
-(int) height;
-(int) area;
-(int) perimeter;

@end

//--@implementation section--
//--This is P4.6 CH4--
@implementation Calculator
{
    double accumulator;
    double memory;
}

-(void) setAccumulator: (double) value
{
    accumulator = value;
}

-(void) clear
{
    accumulator = 0;
}

-(double) accumulator
{
    return accumulator;
}

-(void) add: (double) value
{
    accumulator += value;
}

-(void) subtract:(double)value
{
    accumulator -= value;
}

-(void) multiply:(double)value
{
    accumulator *= value;
}

-(void) divide:(double)value
{
    accumulator /= value;
}

//This is E4.9 CH4
-(double) changeSign;
{
    return accumulator *= -1;
}

-(double) reciprocal
{
    accumulator = 1/accumulator;
    return accumulator;
}

-(double) xSquared
{
    return accumulator *= accumulator;
    return accumulator;
}

//This is E4.10 CH4 final methods for the memory capability
-(double) memoryClear;
{
    return memory = 0;
    return accumulator;
}

-(double) memoryStore;
{
    return memory = accumulator;
    return accumulator;
}

-(double) memoryRecall;
{
    return accumulator = memory;
    return accumulator;
}

-(double) memoryAdd: (double) value;
{
    return memory += value;
    return accumulator;
}

-(double) memorySubtract: (double) value;
{
    return memory -= value;
    return accumulator;
}

@end

//This is E4.6 CH4
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

@end

//This is E4.7 CH4
@implementation Rectangle

{
    int width;
    int height;
}

-(void) setWidth: (int) w;
{
    width = w;
}

-(void) setHeight: (int) h;
{
    height = h;
}

-(int) width;
{
    return width;
}

-(int) height;
{
    return height;
}

-(int) area;
{
    return width * height;
}

-(int) perimeter;
{
    return (width + height) * 2;
}

@end

//--Program section--

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        Calculator *deskCalc = [[Calculator alloc] init];
        [deskCalc setAccumulator:100.0];
        
        /*This is P4.6 CH4
         [deskCalc add: 200.];
         [deskCalc divide:15.0];
         [deskCalc subtract: 10.0];
         [deskCalc multiply: 5];
         NSLog(@"The result is %g", [deskCalc accumulator]);
         */
        
        //This is E4.8 CH4
        [deskCalc add: 200.];
        NSLog(@"The result of add is %g",
              [deskCalc accumulator]);
        
        [deskCalc divide: 15.0];
        NSLog(@"The result of divide is %g",
              [deskCalc accumulator]);
        
        [deskCalc subtract: 10.0];
        NSLog(@"The result of subtract is %g",
              [deskCalc accumulator]);
        
        [deskCalc multiply: 5];
        NSLog(@"The result of multiply is %g",
              [deskCalc accumulator]);
        
        //This is E4.9 CH4
        /*NSLog(@"Result of xSquared method  %g",[deskCalc xSquared]);
         NSLog(@"Result of changeSign method  %g",[deskCalc changeSign]);
         NSLog(@"Result of reciprocal method  %g",[deskCalc reciprocal]);
         */
        
        //This is E4.10 CH4
        [deskCalc setAccumulator:100.0];
        [deskCalc memoryStore];
        [deskCalc memoryRecall];
        NSLog(@"The accumulator is %g", [deskCalc accumulator]);
        
        [deskCalc memoryAdd:50];
        [deskCalc memoryRecall];
        NSLog(@"The accumulator is %g", [deskCalc accumulator]);
        
        [deskCalc memoryAdd:100];
        [deskCalc memoryRecall];
        NSLog(@"The accumulator is %g", [deskCalc accumulator]);
        
        [deskCalc memorySubtract:50];
        [deskCalc memoryRecall];
        NSLog(@"The accumulator is %g", [deskCalc accumulator]);
        
        [deskCalc memorySubtract:100];
        [deskCalc memoryRecall];
        NSLog(@"The accumulator is %g", [deskCalc accumulator]);
        
        [deskCalc memoryClear];
        [deskCalc memoryRecall];
        NSLog(@"The accumulator is %g", [deskCalc accumulator]);
        
        //This is E4.2 CH4
        float fahrenheit = 27.0;
        float celsius = (fahrenheit - 32) / 1.8; // Formula to change from Fahrenheit to Celsius
        NSLog(@"%.1f fahrenheit is %.3f celsius", fahrenheit, celsius);
        
        //This is E4.3 CH4
        char c, d;
        
        c = 'd';
        d = c;
        NSLog(@"d = %c", d);
        
        //This is E4.4 CH4
        double x = 2.55;
        double polynomial1 = 3 * pow(x, 3) - 5 * pow(x, 2) + 6;
        NSLog(@"The value of the polynomial is %f", polynomial1);
        
        //This is E4.5 CH4
        double polynomial2 = (3.31 * pow(10, -8) + 2.01 * pow(10, -7))/(7.16 * pow(10, -6) + 2.01 * pow(10, -8));
        NSLog(@"Value of polynomial %.4e", polynomial2);
        
        //This is E4.6 CH4
        Complex *myComplex = [[Complex alloc] init];
        
        [myComplex setReal:1];
        [myComplex setImaginary:2];
        [myComplex print];
        
        NSLog(@"Value of real party is %.2f and imaginary part is %.2fi",
              [myComplex real], [myComplex imaginary]);
        
        //This is E4.7 CH4
        Rectangle *myRectangle = [[Rectangle alloc] init];
        
        // Save width and height in Rectangle
        [myRectangle setWidth:1];
        [myRectangle setHeight:2];
        
        // Test of methods
        NSLog(@"My rectangle have width = %i, height = %i, area = %i and perimeter = %i",
              [myRectangle width], [myRectangle height], [myRectangle area], [myRectangle perimeter]);
    }
    return 0;
}

/*This is E4.1 CH4
 float a = 123.456;
 int b = 0001;
 int c = 0Xab05;
 double d = 123.5e2;
 float e = 98.6F;
 //int f = 0996; // 9 in octal constant
 unsigned long int g = 1234uL;
 float h = 1.234L;
 int i = 0XABCDEFL;
 //int j = 0x10.5;   // Hexadecimal can't get floating number
 int k = 0xFFFF;
 int l = 0L;
 float m = .0001;
 //float n = 98.7U;  // Float can't be unsigned or signed
 float o = -12E-12;
 //int p = 1.2Fe-7;  // Invalid suffix Fe-7 on floating number
 int r = 197u;
 int s = 0xabcu;
 //int t = 0X0G1;    //Invalid suffix G1
 int u = 123L;
 float v = -597.25;
 int w = +12;
 //int x = 17777s;   // Invalid siffix s on integer
 int y = 07777;
 //int z = 15,000;   // Invalid , in number
 int aa = 100U;
 int ab = +123;
 */
