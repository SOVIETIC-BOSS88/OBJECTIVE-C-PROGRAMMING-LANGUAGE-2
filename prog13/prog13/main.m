//
//  main.m
//  prog13
//
//  Created by SUREN HARUTYUNYAN on 16/11/15.
//  Copyright © 2015 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Date.h"
#import "Fraction+Comparison.h"
#import "Fraction+NSComparisonMethods.h"

//This is P13.3 CH13
void printMessage (void)
{
    NSLog(@"Programming is fun.");
}

//This is P13.4 CH13
//Function to calculate the nth triangular number

void calculateTraingularNumber (int n)
{
    int i, triangularNumber = 0;
    
    for (i = 1; i <= n; ++i)
        triangularNumber += i;
    
    NSLog(@"Triangualer number %i is %i", n, triangularNumber);
}

//This is P13.5 ch13
/*
 int gcd (int u, int v)
 {
 int temp;
 
 while (v != 0)
 {
 temp = u % v;
 u = v;
 v = temp;
 }
 
 return u;
 }
 */

//This is P13.7 CH13

//Block to calculate the nth triangular number

void (^calculateTriangularNumer) (int) =

^(int n)
{
    int i, triangularNumber = 0;
    
    for (i = 1; i <= n; ++i)
        triangularNumber += i;
    
    NSLog(@"Triangular number %i is %i", n, triangularNumber);
};

//This is P13.14 CH13
/*
 void exchange (int *pint1, int *pint2)
 {
 int temp;
 
 temp = *pint1;
 *pint1 = *pint2;
 *pint2 = temp;
 }
 */

//This is P13.15 CH13

int arraySum (int array[], int n)
{
    int sum = 0, *ptr;
    int *arrayEnd = array + n;
    
    for (ptr = array; ptr < arrayEnd; ++ptr)
        sum += *ptr;
    
    return (sum);
}

// This is P13.6 CH13
//THIS IS THE OTHER VERSION
/*
 void copyString (char to[], char from[])
 {
 int i;
 
 for (i = 0; from[i] != '\0'; i++)
 to [i] = from [i];
 
 to[i] = '3';
 }
 */

//This is P13.16 CH13
/*
 void copyString (char *to, char *from)
 {
 for (; *from != '\0'; ++from, ++to)
 *to = *from;
 
 *to = '\0';
 
 }
 */

//This is P13.17 CH13
void copyString (char *to, char *from)
{
    while (*from)
        *to++ = *from++;
    
    *to = '\0';
    
}

//This is E13.1 CH13
float average (float array[])
{
    float sum;
    float n = 10;
    
    for (int i = 0; i < n; ++i)
    {
        sum += array[i];
    }
    
    return sum / n;
}

//This is E13.4 CH13

Fraction *sumFraction (Fraction **fract, int i)
{
    Fraction *result = [[Fraction alloc] init];
    
    [result setTo: 0 over:1];
    
    for (int n = 0; n < i; ++n)
        
        result = [result add:fract[n]];
    
    return result;
    
}

//This is E13.10 CH13

void (^exchange) (int *pint1, int *pint2) =
^(int *pint1, int *pint2)
{
    int temp;
    
    temp = *pint1;
    *pint1 = *pint2;
    *pint2 = temp;
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //This is P13.1 CH13
        /*
         int Fibonacci [15], i;
         
         Fibonacci[0] = 0; // by definition
         Fibonacci[1] = 1; // ditto
         
         for ( i = 2; i < 15; ++i)
         Fibonacci[i] = Fibonacci[i-2] + Fibonacci[i-1];
         
         for ( i = 0; i < 15; ++i)
         NSLog(@"%i", Fibonacci[i]);11
         */
        
        //This is P13.2 CH13
        //char word[] = { 'H', 'e', 'l', 'l', 'o', '!' };
        //int i;
        
        //for ( i = 0; i < 6; ++i)
        //    NSLog(@"%c", word[i]);
        
        char word[] = { 'H', 'e', 'l', 'l', 'o', '!', '\0'};
        NSLog(@"%s", word);
        
        //This is P13.3 CH13
        printMessage();
        
        //This is P13.4 CH13
        
        void calculateTraingularNumber (int n);
        calculateTraingularNumber (10);
        calculateTraingularNumber (20);
        calculateTraingularNumber (50);
        
        //This is P13.5 CH13
        /*
         int result;
         
         result = gcd (150, 35);
         NSLog(@"The gcd of 150 and 35 is %i", result);
         
         result = gcd (1026, 405);
         NSLog(@"The gcd of 1026 405 is %i", result);
         
         NSLog(@"The gcd of 83 and 240 is %i", gcd (83, 240));
         */
        
        //This is P13.6 CH13
        void (^printMessage) (void) =
        
        ^(void)
        
        {
            NSLog(@"Programming is fun.");
        };
        
        printMessage();
        
        //This is P13.7 CH13
        
        calculateTraingularNumber (10);
        calculateTraingularNumber (20);
        calculateTraingularNumber (50);
        
        //This is P13.8 CH13
        
        __block int foo = 10;
        
        void (^printFoo) (void) =
        ^(void)
        {
            NSLog(@"foo = %i", foo);
            
            //This is P13.9 CH13
            //foo = 20; // ** THIS LINE GENERATES A COMPILER ERROR
        };
        
        foo = 15;
        
        printFoo ();
        NSLog(@"foo = %i", foo);
        
        //This is P13.10 CH13
        
        /*
         struct date
         {
         int month;
         int day;
         int year;
         };
         
         struct date today;
         
         today.month = 9;
         today.day = 25;
         today.year = 2014;
         
         NSLog(@"Today's date is %i/%i/%.2i", today.month, today.day, today.year % 100);
         */
        
        //This is P13.11 CH13
        
        int count = 10, x;
        int *intPtr;
        
        intPtr = &count;
        x = *intPtr;
        
        NSLog(@"count = %i, x = %i", count, x);
        
        //This is P13.12 CH13
        
        char c = 'Q';
        char *charPtr = &c;
        
        NSLog(@"%c %c", c, *charPtr);
        
        c = '/';
        NSLog(@"%c %c", c, *charPtr);
        
        *charPtr = '(';
        NSLog(@"%c %c", c, *charPtr);
        
        //This is P13.13 CH13
        /*
         struct date
         {
         int month;
         int day;
         int year;
         };
         
         struct date today, *datePtr;
         
         datePtr = &today;
         datePtr->month = 9;     // (*datePtr).month = 9;
         datePtr->day = 25;      // (*datePtr).day = 25;
         datePtr->year = 2014;   // (*datePtr).year = 2014;
         
         NSLog(@"Today's date is %i/%i/%.2i", datePtr->month, datePtr->day, datePtr->year % 100);
         */
        
        /*
         //This is P13.14 CH13
         void exchange (int *pint1, int *pint2);
         int i1 = -5, i2 = 66, *p1 = &i1, *p2  = &i2;
         
         NSLog(@"i1 = %i, i2 = %i", i1, i2);
         
         exchange(p1, p2);
         NSLog(@"i1 = %i, i2 = %i", i1, i2);
         
         exchange(&i1, &i2);
         NSLog(@"i1 = %i, i2 = %i", i1, i2);
         */
        
        //This is P13.15 CH13
        
        int arraySum (int array [], int n);
        int values[10] = {3, 7, -9, 3, 6, -1, 7, 9 ,1, -5};
        
        NSLog(@"The sum is %i", arraySum (values, 10));
        
        //This is P13.16 CH13
        //THIS IS THE OTHER VERSION
        /*
         void copyString (char to[], char from[]);
         char string1[] = "A string to be copied";
         char string2[50];
         
         copyString(string2, string1);
         NSLog(@"%s", string2);
         
         copyString(string2, "So is this.");
         NSLog(@"%s", string2);
         */
        
        //This is P13.16 CH13
        void copyString (char *to, char *from);
        char string1[] = "A string to be copied";
        char string2[50];
        
        copyString(string2, string1);
        NSLog(@"%s", string2);
        
        copyString(string2, "So is this.");
        NSLog(@"%s", string2);
        
        //This is E13.1 CH13
        float average (float array[]);
        float myArray[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
        
        NSLog(@"%.2f", average(myArray));
        
        //This is E13.2 CH13
        
        Fraction *myFraction = [[Fraction alloc] init];
        [myFraction setTo:2 over:4];
        [myFraction reduce];
        
        NSLog(@"%i/%i", myFraction.numerator, myFraction.denominator);
        
        //This is E13.3 CH13
        //For more information go to  https://www.quora.com/What-is-Sieve-of-Eratosthenes-can-someone-explain
        
        int n, i , j;
        
        n = 150;
        
        int P[n];
        
        //Set all elements from the 2nd to the end to 0
        for (i = 2; i <= n; i++)
            P[i] = 0;
        
        //Mark what is divisible by the current index as 1
        for (i = 2; i <= n; i++)
        {
            if (!P[i])
            {
                for (j = 2; i * j <= n; j++)
                    P[i * j] = 1;
                
                //Display what is prime
                NSLog(@"%i", i);
            }
        }
        
        //This is the other veriosn of E13.3 CH13
        const int arrSize = 15;
        unsigned int intArr[arrSize];
        
        // Set all elements from the 2nd to the end to 0.
        for( int i = 2; i < arrSize; ++i )
            intArr[i] = 0;
        
        // Mark what is divisible by the current index as 1.
        for( int i = 2; i < arrSize; ++i )
        {
            for( int j = 2; j <= arrSize / i; ++j)
            {
                intArr[i * j] = 1;
            }
        }
        //Display what is prime.
        for( int i = 2; i < arrSize; ++i )
            if( intArr[i] == 0 )
                NSLog(@"%u", i );
        
        //This is E13.4 CH13
        Fraction *sumFraction (Fraction **fract, int i );
        
        Fraction *result = [[Fraction alloc] init];
        Fraction *__autoreleasing myFract[3];
        
        for (int i = 0; i < 3; ++i)
        {
            myFract[i] = [[Fraction alloc] init];
            [myFract[i] setTo:1 over:(i + 1)];
        }
        
        result = sumFraction( myFract, 3);
        NSLog(@"%i/%i", result.numerator, result.denominator);
        
        //This is E13.5 CH13
        /*
         typedef struct date
         {
         int day;
         int month;
         int year;
         } Date;
         Date todaysDate;
         
         NSLog(@"Enter today's date:");
         scanf("%i %i %i", &todaysDate.day, &todaysDate.month, &todaysDate.year);
         
         NSLog(@"todaysDate = %i/%i/%i", todaysDate.day, todaysDate.month, todaysDate.year);
         */
        
        //This is E13.6 CH13
        Date *myDate = [[Date alloc] init];
        
        myDate.day = 30;
        myDate.month = 12;
        myDate.year = 2016;
        
        NSLog(@"%i/%i/%i", myDate.day, myDate.month, myDate.year);
        
        [myDate dateUpdate];
        NSLog(@"%i/%i/%i", myDate.day, myDate.month, myDate.year);
        
        [myDate dateUpdate];
        NSLog(@"%.2i/%.2i/%.2i", myDate.day, myDate.month, myDate.year);
        
        
        //This is E13.7 CH13
        char *message = "Programming in Objective-C is fun";
        char message2[] = "You said it";
        //int x = 100;
        
        /*** set 1 ***/
        NSLog(@"Programming in Objective-C is fun");
        NSLog(@"%s", "Programming in Objective-C is fun");
        NSLog(@"%s", message);
        
        /*** set 2 ***/
        NSLog(@"You said it");
        NSLog(@"%s", message2);
        NSLog(@"%s", &message2[0]);
        
        /*** set 3 ***/
        NSLog(@"said it");
        NSLog(@"%s", message2 + 4);
        NSLog(@"%s", &message2[4]);
        
        //This is E13.8 CH13
        NSLog(@"Program name: %s", argv[0]);
        NSLog(@"Argument count: %i", argc - 1); //Put  argc - 1, because argc is considered an argument. Duh.
        
        for (int i = 1; i < argc; ++i)
        {
            NSLog(@"Argument #%i is %s", i, argv[i]);
        }
        
        
        //This is E13.9 CH13
        
        NSLog(@"This is a test");           //It uses the string object argument with the NSLog method.
        
        //NSLog("This is a test");          //We need adress pointer @ or it won't work.
        
        NSLog(@"%s", "This is a test");     //This works fine, like in E13.7 CH13.
        
        //NSLog(@"%s", @"This is a test");  //Here the format is for character string, but we are passing an argument that is an NSString. We have to remove extra argument string "@".
        
        //NSLog("%s", "This is a test");    //Here we are are in front of an incompatible pointer type, we are passing char to an NSString type. Here the "@" is missing.
        
        //NSLog("%s", @"This is a test");   //Here we are are in front of an incompatible pointer type, we are passing char to an NSString type. Also here we have an implicit conversion of non-Objective-C pointer type c to NSString, which is disallowed with ARC. Here the "@" is missing, and we have to remove the extra argument string "@".
        
        NSLog(@"%@", @"This is a test");    //Argument is what it expects to be passed to it.
        
        //NSLog(@"%@", "This is a test");   //Here the format sepcifies type id, but the argument is of type char.
        
        
        //This is E13.10 CH13
        int i1 = -5, i2 = 66, *p1 = &i1, *p2  = &i2;
        
        NSLog(@"i1 = %i, i2 = %i", i1, i2);
        
        exchange(p1, p2);
        NSLog(@"i1 = %i, i2 = %i", i1, i2);
        
        exchange(&i1, &i2);
        NSLog(@"i1 = %i, i2 = %i", i1, i2);
        
        
    }
    return 0;
}
