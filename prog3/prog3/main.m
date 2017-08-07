//
//  main.m
//  prog3
//
//  Created by SUREN HARUTYUNYAN on 9/8/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

//This is the P3.2, P3.3 and P3.4 CH3
//Program to work with fracions - class version and the cont'd

#import <Foundation/Foundation.h>

//--@interface section--

@interface Fraction: NSObject

-(void) print0;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;

@end

//This is E3.7 CH3
//interface section

@interface XYPoint: NSObject

-(void) print1;
-(void) setAbcissa:(int)x;
-(void) setOrdinate:(int)y;
-(int)  abcissa;
-(int)  ordinate;

@end

//--@implementation setion--

@implementation Fraction
{
    int numerator;
    int denominator;
}

-(void) print0
{
    NSLog(@"%i/%i", numerator, denominator);
}

-(void) setNumerator:(int)n
{
    numerator = n;
}

-(void) setDenominator:(int)d
{
    denominator = d;
}

-(int) numerator
{
    return numerator;
}

-(int) denominator
{
    return denominator;
}
@end

//This is E3.7 CH3
//--implementation section--
@implementation XYPoint

int abcissa;
int ordinate;

-(void) print1
{
    NSLog(@"(%i, %i)", abcissa, ordinate);
}

-(void) setAbcissa:(int)x
{
    abcissa = x;
}

-(void) setOrdinate:(int)y
{
    ordinate = y;
}

-(int) abcissa
{
    return abcissa;
}

-(int) ordinate
{
    return ordinate;
}

@end

//--program section--
//--program section P3.2--

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        
        Fraction *myFraction;
        
        //Creating an instance of Fraction class
        
        myFraction = [Fraction alloc];
        myFraction = [myFraction init];
        
        //Setting fraction to 1/3
        
        [myFraction setNumerator:1];
        [myFraction setDenominator:3];
        
        //Displaying our fraction using the print method
        
        NSLog(@"The value of myFraction is:");
        [myFraction print0];
        
        //--program section P3.3--
        
        Fraction *frac1 = [[Fraction alloc] init];
        Fraction *frac2 = [[Fraction alloc] init];
        
        //Set 1st fraction to 2/3
        
        [frac1 setNumerator:2];
        [frac1 setDenominator:3];
        
        //Set 2nd fraction to 3/7
        [frac2 setNumerator:3];
        [frac2 setDenominator:7];
        
        //Display the fractions
        
        NSLog(@"First fraction is:");
        [frac1 print0];
        
        NSLog(@"Second fraction is:");
        [frac2 print0];
        
        //--program section P3.4
        // Display the fraction using our two new methods
        
        NSLog(@"The value of myFraction is: %i/%i",
              [myFraction numerator], [myFraction denominator]);
        
        //This is E3.7 CH3
        //--program section--
        XYPoint *myXYPoint = [[XYPoint alloc] init];
        
        //Creating an instance of XYPoint class, which is done above with the definition of the variable myXYPoint
        
        //Setting fraction to 1/3
        
        [myXYPoint setAbcissa:1];
        [myXYPoint setOrdinate:3];
        
        
        //Display Setting the coordinates
        
        NSLog(@"Coordinates are (%i, %i)",
              [myXYPoint abcissa], [myXYPoint ordinate]);
        
        
        // Display Getting the coordinates
        
        NSLog(@"The Cartesian coordinates of the point are: (%i, %i)",
              [myXYPoint abcissa], [myXYPoint ordinate]);
        
    }
    return 0;
}

/* These are some examples of the answers of E3 of CH3
 
 E3.1 CH3
 
 Int: reserved word
 6_05: names can't start with a number
 A$: $ is not a valid character
 
 E3.2 CH3
 
 Class: Computer
 Actions: start it, update it, clean it, close it, fix it
 
 E3.3 CH3
 
 [myComputer start]
 [myComputer update]
 [myComputer clean]
 [myComputer close]
 [myComputer fix]
 
 E3.4 CH3
 
 Actions with a car: prep it, drive it, fill it with gas, wash it, service it
 Actions with a boat: prep it, drive it, fill it with gas, wash it, service it
 Actions with a motorcycle: prep it, drive it, fill it with gas, wash it, service it
 There is an overlap: all the actions are the same.
 
 E3.5 CH3
 
 This allow an aconomy of code: I can use the same action for many objects from several classes instead of writing one action per object.
 
 E3.6 CH3
 I see a disadvantage: I have to multiply the same code in order to do the same thing to similar objects.
 */



