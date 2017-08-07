//
//  main.m
//  prog5
//
//  Created by SUREN HARUTYUNYAN on 11/8/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])

{
    @autoreleasepool {
        
        //This is E5.1 CH5
        int n5;
        
        
        NSLog(@" n      n^2");
        NSLog(@"___________");
        
        for (n5 = 0; n5 <= 10; ++n5)
        {
            NSLog(@"%2i      %3i", n5, n5 * n5);
        }
        
        //This is E5.2 CH5
        int n6, triangularNumber5;
        
        
        for (n6 = 5, triangularNumber5 = 0; n6 <= 50; n6 += 5)
            NSLog(@"Triangular number for %i is %i", n6, (n6 * (n6 +1) / 2));
        
        //This is E5.3 CH5
        int n7, factorialNumber;
        
        
        for (n7 = 1, factorialNumber = 1; n7 <= 10; ++n7)
        {
            factorialNumber *= n7;
            NSLog(@"Factorial of %2i! is %i", n7, factorialNumber);
        }
        
        //This is E5.4 CH5
        //Note that this is a modificaciotn of the las nslog of the P5.3 CH5
        int n8, triangularNumber6;
        
        
        NSLog(@"TABLE OF TRIANGULAR NUMBERS");
        NSLog(@" n   Sum from 1 to n");
        NSLog(@"--   ---------------");
        
        triangularNumber6 = 0;
        
        for (n8 = 0; n8 <= 10; n8 = n8 + 1)
        {
            triangularNumber6 += n8;
            NSLog(@"%-2i               %i", n8, triangularNumber6);
        }
        
        //This is E5.5 CH5
        //Note that this is a modification of the P5.5 CH5
        int n9, number4, triangularNumber7, counter1, timesOfCalculated;
        
        
        NSLog(@"How many number of triangulars numbers you want to be calculated?");
        scanf("%i", &timesOfCalculated);
        
        for (counter1 = 1; counter1 <= timesOfCalculated; ++counter1)
        {
            NSLog(@"What triangular number do you want?");
            scanf("%i", &number4);
            
            triangularNumber7 = 0;
            
            for (n9 = 0; n9 <= number4; n9 = n9 + 1)
            {
                triangularNumber7 += n9;
            }
            
            NSLog(@"Triangular number %i is %i", number4, triangularNumber7);
        }
        
        //This is P5.2 CH5
        int n0, triangularNumber0;
        
        
        triangularNumber0 = 0;
        
        for (n0 = 1; n0 <= 200; n0 = n0 + 1)
            triangularNumber0 += n0;
        
        NSLog(@"The 200th triangular number is %i", triangularNumber0);
        
        //This is E5.6 CH5for P5.2 CH5
        int n10, triangularNumber8;
        
        
        triangularNumber8 = 0;
        
        n10 = 0;
        
        while (n10 <= 200)
        {
            triangularNumber8 += n10;
            ++n10;
        }
        NSLog(@"The 200th triangular number is %i", triangularNumber8);
        
        //This is P5.3 CH5
        int n1, triangularNumber1;
        
        
        NSLog(@"TABLE OF TRIANGULAR NUMBERS");
        NSLog(@" n   Sum from 1 to n");
        NSLog(@"--   ---------------");
        
        triangularNumber1 = 0;
        
        for (n1 = 0; n1 <= 10; n1 = n1 + 1)
        {
            triangularNumber1 += n1;
            NSLog(@"%2i               %3i", n1, triangularNumber1);
        }
        
        //This is E5.6 CH5 for P5.3 CH5
        int n11, triangularNumber9;
        
        
        NSLog(@"TABLE OF TRIANGULAR NUMBERS");
        NSLog(@" n   Sum from 1 to n");
        NSLog(@"--   ---------------");
        
        triangularNumber9 = 0;
        
        n11 = 0;
        while (n11 <= 10)
        {
            triangularNumber9 += n11;
            NSLog(@"%-2i               %3i", n11, triangularNumber9);
            ++n11;
        }
        
        //This is P5.4 CH5
        int n2, number0, triangularNumber2;
        
        
        NSLog(@"What triangular number do you want?");
        scanf("%i", &number0);
        
        triangularNumber2 = 0;
        
        for (n2 = 0; n2 <= number0; n2 = n2 + 1)
        {
            triangularNumber2 += n2;
        }
        
        NSLog(@"Triangular number %i is %i", number0, triangularNumber2);
        
        //This is E5.6 CH5 for P5.4 CH5
        int n12, number5, triangularNumber10;
        
        
        NSLog(@"What triangular number do you want?");
        scanf("%i", &number5);
        
        triangularNumber10 = 0;
        
        n12 = 0;
        while (n12 <= number5)
        {
            triangularNumber10 += n12;
            ++n12;
        }
        
        NSLog(@"Triangular number %i is %i", number5, triangularNumber10);
        
        //This is P5.5 CH5
        int n3, number1, triangularNumber3, counter0;
        
        
        for (counter0 = 1; counter0 <= 5; ++counter0)
        {
            NSLog(@"What triangular number do you want?");
            scanf ("%i", &number1);
            
            triangularNumber3 = 0;
            
            for (n3 = 1; n3 <= number1; ++n3)
                triangularNumber3 += n3;
            
            NSLog(@"Triangular number %i is %i\n", number1, triangularNumber3);
        }
        
        //This is E5.6 CH5 for P5.5 CH5
        int n13, number6, triangularNumber11, counter2;
        
        
        counter2 = 1;
        
        while (counter2 <= 5)
        {
            NSLog(@"What triangular number do you want?");
            scanf("%i", &number6);
            
            triangularNumber11 = 0;
            
            n13 = 0;
            
            while (n13 <= number6)
            {
                triangularNumber11 += n13;
                ++n13;
            }
            
            NSLog(@"Triangular number %i is %i", number6, triangularNumber11);
            ++counter2;
        }
        
        //This is E5.7 CH5
        //Typed -59, the output was, -9 and -5
        
        //This is E5.8 CH5
        unsigned number7, right_digit2;
        
        
        right_digit2= 0;
        
        NSLog(@"Enter your number.");
        scanf("%i", &number7);
        
        do
        {
            right_digit2 += number7 % 10;
            number7 /= 10;
        }
        
        while (number7 != 0);
        NSLog(@"%i", right_digit2);
        
        //This is P5.7 CH5
        unsigned int u, v, temp;
        
        NSLog(@"Please type in two nonnegative integers.");
        scanf ("%u%u", &u, &v);
        
        while (v !=0)
        {
            temp = u % v;
            u =v;
            v = temp;
        }
        NSLog(@"Their gratest common divisor is %u", u);
        
        //This is P5.8 CH5
        int number2, right_digit0;
        
        
        NSLog(@"Enter your number.");
        scanf ("%i", &number2);
        
        while (number2 != 0)
        {
            right_digit0 = number2 % 10;
            NSLog(@"%i", right_digit0);
            
            /*Here we can divide by 10, because we know that the division result will be 1357,
             and int doesnt take remainders (haha, it doesnt take prisoners)0*/
            number2 /= 10;
        }
        
        //This is P5.9 CH5
        int number3, right_digit1;
        
        
        NSLog(@"Enter your number.");
        scanf("%i", &number3);
        
        do
        {
            right_digit1 = number3 % 10;
            NSLog(@"%i", right_digit1);
            number3 /= 10;
        }
        while (number3 != 0);
        
    }
    return 0;
}
