//
//  main.m
//  prog6.1Fraction
//
//  Created by SUREN HARUTYUNYAN on 12/8/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <math.h>

//--@interface section--

@interface Fraction: NSObject

-(void)   print;
-(void)   setNumerator: (int) n;
-(void)   setDenominator: (int) d;
-(int)    numerator;
-(int)    denominator;
-(double) convertToNum;

@end

//--@implementation setion--

@implementation Fraction
{
    int numerator;
    int denominator;
}

-(void) print
{
    //This is E6.3 CH6
    if (denominator == 1)
        NSLog(@"%i", numerator);
    
    else if (numerator == 0)
        NSLog(@"%i", numerator);
    
    else
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

-(double) convertToNum
{
    if (denominator != 0)
        return (double) numerator/denominator;
    else
        return NAN;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //This is E6.5 CH6
        //The code is from P5.9 CH5
        /*
         signed number1, right_digit;
         BOOL isNegative = NO;
         
         NSLog(@"Enter your number.");
         scanf("%i", &number1);
         
         if (number1 < 0)
         {
         number1 = -number1;
         isNegative = YES;
         }
         
         do
         {
         right_digit = number1 % 10;
         NSLog(@"%i", right_digit);
         number1 /= 10;
         }
         
         while (number1 != 0);
         if (isNegative)
         NSLog(@"-");
         */
        
        //This is E6.6 CH6
        //This is from the second code of the http://classroomm.com/objective-c/index.php?topic=9618.0
        
        int digits = 0, sign0 = 1;
        long int number, tempNumber;
        
        
        NSLog(@"\nEnter your number.");
        scanf("%li", &number);
        
        if ( number == 0)
            printf("\n\tThe only digit is a zero.\n");
        
        else {
            if ( number < 0) // Check for a negative number
            {
                sign0 = 0;
                number *= -1;
            }
            
            tempNumber = number;
            while (tempNumber != 0)
            {
                tempNumber /= 10;
                ++digits;   // calculates the digits of the integar
            }
            
            NSLog(@"There are %i digits", digits);
            
            if ( !sign0 )
                printf("(-) minus\n");  // number was negative
            
            /* Loop A   */
            for (int n = 1; n <= digits; ++n)
            {
                tempNumber = number;
                
                /* Loop B   */
                for (int a = 1; a <= digits - n; ++a)
                    tempNumber /= 10;
                
                /* This loop is the math part!
                 input: 564738
                 digits = 6
                 keep dividing tempNumber by 10 by (digits - 1) times
                 ie;
                 
                 1st time thru loop: 564738 / 10 = 56473 (int truncates the actual number),
                 a increments to 2.
                 
                 2nd time thru loop: 56473 / 10 = 5647,
                 a increments to 3.
                 
                 3rd time thru loop: 5647 / 10 = 564,
                 a increments to 4.
                 
                 4th time thru loop: 564 / 10 = 56,
                 a increments to 5.
                 
                 5th time thru loop: 56 / 10 = 5.
                 a increments to 6.
                 
                 Since a is now greater than ( 5 - 1 ), the loop terminates and
                 the case statements are evaluated. */
                
                switch (tempNumber)
                {
                    case 1:
                        NSLog(@"One");
                        break;
                    case 2:
                        NSLog(@"Two");
                        break;
                    case 3:
                        NSLog(@"Three");
                        break;
                    case 4:
                        NSLog(@"Four");
                        break;
                    case 5:
                        NSLog(@"Five");
                        break;
                    case 6:
                        NSLog(@"Six");
                        break;
                    case 7:
                        NSLog(@"Seven");
                        break;
                    case 8:
                        NSLog(@"Eight");
                        break;
                    case 9:
                        NSLog(@"Nine");
                        break;
                    case 0:
                        NSLog(@"Zero");
                        break;
                }
                
                /* Loop C   */
                for (int b = 1; b <= digits - n; ++b)
                    tempNumber *= 10; // End of Loop C
                
                /* From Loop A this loop enters with;
                 
                 tempNumber = 5,
                 
                 1st time thru loop: 5 * 10 = 50, the new value of tempNumber,
                 b increments to 2.
                 
                 2nd time thru loop: 50 * 10 = 500, new value of tempNumber,
                 b increments to 3.
                 
                 3rd time thru loop: 500 * 10 = 5000, new value of tempNumber,
                 b increments to 4.
                 
                 4th time thru loop: 5000 * 10 = 50000, new value of tempNumber,
                 b increments to 5.
                 
                 5th time thru loop: 50000 * 10 = 500000, new value of tempNumber,
                 b increments to 6 which is greater than (6 - 1) and the loop terminates. */
                
                number -= tempNumber;   // End of Loop B
                
                /* 564738 - 500000 = 64738
                 
                 We now return to Loop A    */
            }
        }
        
        //This is P6.2 CH6
        //Creating an instance of Fraction class
        
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        
        [aFraction setNumerator:1]; // 1st fraction is 1/4
        [aFraction setDenominator:4];
        
        [aFraction print];
        NSLog(@" =");
        NSLog(@"%g", [aFraction convertToNum]);
        
        [bFraction print];
        NSLog(@" =");
        NSLog(@"%g", [bFraction convertToNum]);
        
        //This is P6.3 CH6
        int number_to_test, remainder;
        
        
        NSLog(@"Enter your number to be tested");
        scanf("%i", &number_to_test);
        
        remainder = number_to_test % 2;
        /*
         //This is the long version ov 6.3
         if ( remainder == 0 )
         NSLog(@"The number is even.");
         
         if ( remainder != 0 )
         NSLog(@"The number is odd.");
         */
        
        //This is the short version, P6.4 CH6
        if (remainder == 0)
            NSLog(@"The number is even.");
        
        else
            NSLog(@"The number is odd.");
        
        //This is P6.5 CH6
        int year, rem_4, rem_100, rem_400;
        
        
        NSLog(@"Enter the year to be tested:");
        scanf("%i", &year);
        
        rem_4   = year % 4;
        rem_100 = year % 100;
        rem_400 = year % 400;
        
        if ((rem_4 == 0 && rem_100 != 0) || rem_400 == 0)
            NSLog(@"It's a leap year.");
        
        else
            NSLog(@"Nope, it's not a leap year");
        
        //This is P6.6 CH6
        int number0, sign1;
        
        
        NSLog(@"Please type in a number:");
        scanf("%i", &number0);
        
        if ( number0 < 0 )
            sign1 = -1;
        else if (number0 == 0 )
            sign1 = 0;
        else //Must be positive
            sign1 = 1;
        
        NSLog(@"Sign = %i", sign1);
        
        //This is P6.7 CH6
        char c;
        
        NSLog(@"Enter a single character:");
        scanf (" %c", &c);
        
        if ( (c >= 'a' && c <= 'z') || (c >='A' && c <= 'Z') )
            NSLog(@"It's an alphabetic character.");
        else if (c >= '0' && c <= '9')
            NSLog(@"It's a digit.");
        else
            NSLog(@"It's a special character.");
        
        //This is E6.1 CH6
        int value1, value2;
        
        
        NSLog(@"Type in two integer values.");
        scanf("%i %i", &value1, &value2);
        
        if (value1 % value2 == 0)
            NSLog(@"Number %i is evenly divisible by number %i.", value1, value2);
        else
            NSLog(@"Number %i is not evenly divisible by number %i.", value1, value2);
        
        //This is E6.2 CH6
        //Solved in prog6.2
        
        
    }
    return 0;
}