//
//  main.m
//  prog6.2Calculator
//
//  Created by SUREN HARUTYUNYAN on 13/8/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//
//This is the P6.8 of CH6
//Implementing a calculator class
//Program to evaluate simple expressions of the form:
//                                                   number operator number

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
-(void) print;

@end

//--@implementation section--
//--This is P4.6 CH4--
@implementation Calculator

{
    double accumulator;
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
    //This is P6.8 CH8
    accumulator /= value;
    
    /*
     //This is an add-on after P6.8.A CH6
     if ( value != 0 )
     accumulator /= value;
     else
     {
     NSLog(@"Division by zero.");
     accumulator = NAN;
     }
     */
}

//This is E6.4 CH6
-(void) print
{
    NSLog(@"= %f", accumulator);
}

@end

//--Program section--

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        /*double      value1, value2;
         char        operator;
         //BOOL        canPrint = YES;
         Calculator  *deskCalc = [[Calculator alloc] init];
         */
        
        //This is E6.4 CH6
        
        double value;
        char operator;
        Calculator *deskCalc = [[Calculator alloc] init];
        
        
        NSLog(@"Begin calculations.");
        
        do {
            scanf("%lf %c", &value, &operator);
            
            if ((operator == 'S' || operator == 's'))
            {
                [deskCalc setAccumulator: value];
                [deskCalc print];
            }
            
            else if (operator == '+')
            {
                [deskCalc add: value];
                [deskCalc print];
            }
            
            else if (operator == '-')
            {
                [deskCalc subtract: value];
                [deskCalc print];
            }
            
            else if (operator == '*')
            {
                [deskCalc multiply: value];
                [deskCalc print];
            }
            
            else if (operator == '/')
            {
                [deskCalc divide: value];
                [deskCalc print];
            }
            
            else if ((operator == 'E' || operator == 'e'))
                [deskCalc print];
            
            else
            {
                NSLog(@"Unknown Operator");
                break;
            }
            
        }
        while (!(operator == 'E' || operator == 'e'));
        
        
        //This is P6.8 CH6
        //NSLog(@"Type in your expression.");
        //scanf("%lf %c %lf", &value1, &operator, &value2);
        
        //[deskCalc setAccumulator:value1];
        
        //This is E6.2 CH6
        /*
         if ( operator == '+' )
         [deskCalc add: value2];
         
         else if ( operator == '-' )
         [deskCalc subtract: value2];
         
         else if ( operator == '*')
         [deskCalc multiply: value2];
         
         else if ( operator == '/')
         if ( value2 == 0 )
         {
         NSLog(@"Division by zero.");
         canPrint = NO;
         }
         else
         [deskCalc divide: value2];
         else
         {
         NSLog (@"Unknown operator.");
         canPrint = NO;
         }
         
         if (canPrint == YES)
         NSLog(@"%.2f", [deskCalc accumulator]);
         */
        //This is P6.8A CH6
        /*
         if ( operator == '+' )
         [deskCalc add: value2];
         
         else if ( operator == '-' )
         [deskCalc subtract: value2];
         
         else if ( operator == '*')
         [deskCalc multiply: value2];
         
         else if ( operator == '/')
         if ( value2 == 0 )
         //This is P6.8 CH6
         //[deskCalc divide: value2];
         
         // This is 6.8A CH6
         NSLog(@"Division by zero.");
         else
         [deskCalc divide: value2];
         else
         NSLog (@"Unknown operator.");
         */
        
        
        //This is P6.9 CH6
        /*switch ( operator)
         {
         case '+':
         [deskCalc add: value2];
         break;
         
         case '-':
         [deskCalc subtract: value2];
         break;
         
         case '*':
         case 'x':
         [deskCalc multiply: value2];
         break;
         
         case '/':
         [deskCalc divide: value2];
         break;
         
         default:
         NSLog(@"Unknown operator.");
         break;
         }
         
         NSLog(@"%.2f", [deskCalc accumulator]);
         */
        
        //This is P6.10 CH6
        /*
         int p, d, isPrime;
         
         
         for ( p = 2; p <= 50; ++p )
         {
         isPrime = 1;
         
         for ( d = 2; d < p; ++d )
         if ( p % d == 0 )
         isPrime = 0;
         
         if ( isPrime != 0 )
         NSLog(@"%i ", p);
         }
         */
        
        //This is E6.7 CH6
        int p, d;
        BOOL isPrime = YES;
        
        
        for (p=2; p<=50; ++p) // condition 1: skipping checks of all even numbers
        {
            d=2;
            do
            {
                if ( p % d == 0 )
                {
                    isPrime = NO;
                    break; // condition 2: stop calculations after isPrime = NO
                }
                
                else
                {
                    isPrime = YES;
                    d++;
                }
            }
            
            while (d < p);
            
            if ( isPrime == YES )
                NSLog(@"%i", p); // Print out prime numbers only
            
            else
                isPrime = YES;
        }
        
        //This is another version of E6.7 CH6
        /*
         int p, d;
         BOOL isPrime;
         
         for (p = 2; p <= 50; ++p)
         {
         isPrime = YES;
         if ( p % 2 != 0)                            //Odd numbers only
         {
         for (d = 2; d < p && isPrime; ++d)      //Stop once prime number is found
         
         if ( p % d == 0 )
         {
         isPrime = NO;
         }
         
         else
         {
         isPrime = YES;
         NSLog(@"%i", p);
         }
         }
         
         }
         */
        
        
        //This is P6.10.A CH6, with the BOOL
        /*int p, d;
         BOOL isPrime;
         
         
         for ( p = 2; p <= 50; ++p)
         {
         isPrime = YES;
         
         for ( d = 2; d < p; ++d )
         if ( p % d == 0)
         isPrime = NO;
         
         if ( isPrime == YES )
         NSLog(@"%i", p);
         }
         */
    }
    return 0;
}
