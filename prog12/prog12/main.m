//
//  main.m
//  prog12
//
//  Created by SUREN HARUTYUNYAN on 15/11/15.
//  Copyright © 2015 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>

//This is E12.1 CH12
#import <limits.h>
#import <float.h>
//

//This is E12.2 CH12
//First we have to undef MIN, because there is a default definition of it.

#undef MIN//(a,b)
#define MIN(a,b) ( ((a) < (b)) ? (a) : (b) )

//This is E12.3 CH12
#undef MAX3
#define MAX3(a,b,c) ( ((a) > (b)) ? ( ((a) > (c)) ? (a) : (c)) : ( ((b) > (c)) ? (b) : (c)) )

//This is E12.4 CH12
#define IS_UPPER_CASE(x) ( ((x) >= 'A') && ( (x) <= 'Z') )

//This is E12.5 CH12
#define IS_LOWER_CASE(x) ( ((x) >= 'a') && ( (x) <= 'z') )
#define IS_ALPHABETIC(x) ( IS_LOWER_CASE(x) || IS_UPPER_CASE(x) )

//This is E12.6 CH12
#define IS_DIGIT(x) ( ((x) >= '0') && ( (x) <= '9') )
#define IS_SPECIAL(x) ( !IS_ALPHABETIC(x) && !IS_DIGIT(x) )

//This is E.12.7 CH12
#define ABSOLUTE_VALUE(x) ( (x < 0) ? (-x) : (x) )

int main(int argc, const char * argv[])
{
    @autoreleasepool
    
    {
        //This is E12.2 CH12
        
        //int a, b;
        //a = 5;
        //b = 8;
        //NSLog(@"The minimum of the 2 values is %i", MIN(a,b));
        
        //This is E12.3 CH12
        
        //int a, b ,c;
        //a = 5;
        //b = 7;
        //c = 8;
        //NSLog(@"The maximum of the 3 values is %i", MAX3(a,b,c));
        
        //This is E12.4 CH12
        
        //char a, b;
        //a = 'A';
        //b = 'b';
        //NSLog(@"Is a an upper case = %i", IS_UPPER_CASE(a));
        //NSLog(@"Is b an upper case = %i", IS_UPPER_CASE(b));
        
        //This is E12.5 CH12
        
        //char a, b;
        //int c = 0;
        //a = 'A';
        //b = 'b';
        
        /*
         NSLog(@"Is a an upper case = %i", IS_UPPER_CASE(a));
         NSLog(@"Is b an upper case = %i", IS_UPPER_CASE(b));
         NSLog(@"Is a an alphabetical = %i", IS_ALPHABETIC(a));
         NSLog(@"Is c an alphebetical = %i", IS_ALPHABETIC(c));
         */
        
        //This is E12.6 CH12
        
        char a, b, c, d;
        
        a = 'A';
        b = 'b';
        c = '0';
        d = ';';
        
        NSLog(@"Is a an upper case = %i", IS_UPPER_CASE(a));
        NSLog(@"Is b an upper case = %i", IS_UPPER_CASE(b));
        NSLog(@"Is a an alphabetical = %i", IS_ALPHABETIC(a));
        NSLog(@"Is c an alphabetical = %i", IS_ALPHABETIC(c));
        NSLog(@"Is c a digit = %i", IS_DIGIT(c));
        NSLog(@"Is a a digit = %i", IS_DIGIT(a));
        NSLog(@"Is d a special character = %i", IS_SPECIAL(d));
        NSLog(@"Is a a special character = %i", IS_SPECIAL(a));
        
        //This is E12.7 CH12
        
        int e = -5;
        NSLog(@"The absolute value of a = %i", ABSOLUTE_VALUE(e + 1));
    }
    
    return 0;
}
