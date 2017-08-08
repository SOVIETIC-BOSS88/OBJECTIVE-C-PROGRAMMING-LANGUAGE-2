//
//  ViewController.m
//  prog21.2Fraction_Calculator
//
//  Created by SUREN HARUTYUNYAN on 8/8/17.
//  Copyright © 2017 ClassroomM. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"
#import "Fraction.h"

@interface ViewController ()

@end

@implementation ViewController

//This is P21.2 CH21
{
    char op;
    
    //This is E21.4 CH21
    int currentNumber;
    
    //This is E21.4 CH21
    int pastFirstOperand;
    
    //BOOL firstOperand, isNumerator;
    
    //This is E21.2 CH21
    BOOL firstOperand, isNumerator, isNegative, isWriting;
    
    Calculator *myCalculator;
    //NSMutableString *displayString;
    //This is E21.4 CH21
    NSMutableString *displayString, *displayStringSecond;
    
}

//This is P21.2 CH21
@synthesize display, displaySecond;

/*
 - (void)viewDidLoad
 {
 //Override point for customization after launch
 firstOperand = YES;
 isNumerator = YES;
 displayString = [NSMutableString stringWithCapacity: 40];
 myCalculator = [[Calculator alloc] init];
 }
 */


//This is E21.2 CH21
/*
 - (void)viewDidLoad
 {
 //Override point for customization after launch
 firstOperand = YES;
 isNumerator = YES;
 isNegative = NO;
 isWriting = NO;
 displayString = [NSMutableString stringWithCapacity: 40];
 myCalculator = [[Calculator alloc] init];
 }
 */


//This is E21.4 CH21
- (void)viewDidLoad
{
    //Override point for customization after launch
    firstOperand = YES;
    isNumerator = YES;
    isNegative = NO;
    isWriting = NO;
    pastFirstOperand = 0;
    displayString = [NSMutableString stringWithCapacity: 40];
    displayStringSecond = [NSMutableString stringWithCapacity: 40];
    myCalculator = [[Calculator alloc] init];
}



/*
 -(void) processDigit: (int) digit
 {
 currentNumber = currentNumber * 10 + digit;
 [displayString appendString:[NSString stringWithFormat: @"%i", digit]];
 display.text = displayString;
 }
 */


//This is E21.2 CH21
-(void) processDigit: (int) digit
{
    //Here since we are processing a digit, we set the isWriting variable to YES.
    if (!isWriting)
        isWriting = YES;
    
    if (isNegative)
        currentNumber = currentNumber * 10 - digit;
    else
        currentNumber = currentNumber * 10 + digit;
    
    [displayString appendString:[NSString stringWithFormat: @"%i", digit]];
    display.text = displayString;
}


/*
 -(void) processOp: (char) theOp
 {
 NSString *opStr;
 
 op = theOp;
 
 switch (theOp)
 {
 case '+':
 opStr = @" + ";
 break;
 case '-':
 opStr = @" - ";
 break;
 case '*':
 opStr = @" x ";
 break;
 case '/':
 opStr = @" ÷ ";
 break;
 }
 
 [self storeFracPart];
 firstOperand = NO;
 isNumerator = YES;
 
 [displayString appendString: opStr];
 display.text = displayString;
 }
 */


//This is E21.2 CH21
/*
 -(void) processOp: (char) theOp
 {
 NSString *opStr;
 
 if (theOp == '-' && isWriting == NO)
 {
 isNegative = YES;
 [displayString appendString:@"-"];
 display.text = displayString;
 
 return;
 }
 
 op = theOp;
 
 switch (theOp)
 {
 case '+':
 opStr = @" + ";
 break;
 case '-':
 opStr = @" - ";
 break;
 case '*':
 opStr = @" x ";
 break;
 case '/':
 opStr = @" ÷ ";
 break;
 }
 
 [self storeFracPart];
 firstOperand = NO;
 isNumerator = YES;
 isNegative = NO;
 isWriting = NO;
 
 [displayString appendString: opStr];
 display.text = displayString;
 }
 */

//This is E21.4 CH21
-(void) processOp: (char) theOp
{
    NSString *opStr;
    
    if (theOp == '-' && isWriting == NO)
    {
        isNegative = YES;
        [displayString appendString: @"-"];
        display.text = displayString;
        return;
    }
    
    [self storeFracPart];
    
    if (pastFirstOperand)
    {
        [myCalculator performOperation: op];
        
        //Here we display the running total in a secondary display.
        [displayStringSecond setString: @"="];
        [displayStringSecond appendString: [myCalculator.accumulator convertToString]];
        displaySecond.text = displayStringSecond;
        
        //Here we take the value of the accumulator after the calculation and we place it in the operand1.
        
        myCalculator.operand1.numerator = myCalculator.accumulator.numerator;
        myCalculator.operand1.denominator = myCalculator.accumulator.denominator;
    }
    
    //Here we make sure that we are trying to do an operation and not just an initial negative number.
    if (!pastFirstOperand)
        ++pastFirstOperand; //Here at this point an operand has been pressed.
    
    op = theOp;
    
    switch (theOp)
    {
        case '+':
            opStr = @" + ";
            break;
        case '-':
            opStr = @" - ";
            break;
        case '*':
            opStr = @" x ";
            break;
        case '/':
            opStr = @" ÷ ";
            break;
    }
    
    firstOperand = NO;
    isNumerator = YES;
    isNegative = NO;
    isWriting = NO;
    
    [displayString appendString: opStr];
    display.text = displayString;
}


/*
 -(void) storeFracPart
 {
 if (firstOperand)
 {
 if (isNumerator)
 {
 myCalculator.operand1.numerator = currentNumber;
 myCalculator.operand1.denominator = 1; // e.g. 3 * 4/5 =
 }
 else
 myCalculator.operand1.denominator = currentNumber;
 }
 else if (isNumerator)
 {
 myCalculator.operand2.numerator = currentNumber;
 myCalculator.operand2.denominator = 1; // e.g. 3/2 * 4 =
 }
 else
 {
 myCalculator.operand2.denominator = currentNumber;
 firstOperand = YES;
 }
 
 currentNumber = 0;
 }
 */

//This is E21.4 CH21
-(void) storeFracPart
{
    if (firstOperand)
    {
        if (isNumerator)
        {
            myCalculator.operand1.numerator = currentNumber;
            myCalculator.operand1.denominator = 1; // e.g. 3 * 4/5 =
        }
        else
            myCalculator.operand1.denominator = currentNumber;
    }
    else if (isNumerator)
    {
        myCalculator.operand2.numerator = currentNumber;
        myCalculator.operand2.denominator = 1; // e.g. 3/2 * 4 =
    }
    else
    {
        myCalculator.operand2.denominator = currentNumber;
        firstOperand = YES;
    }
    
    currentNumber = 0;
}


//Numeric keys
-(IBAction) clickDigit: (UIButton *) sender
{
    int digit = (int) sender.tag; //Added the (int), because otherwise it was not working.
    [self processDigit: digit];
}

//Arithmetic Operation keys
-(IBAction) clickPlus
{
    [self processOp: '+'];
}

-(IBAction) clickMinus
{
    [self processOp: '-'];
}


-(IBAction) clickMultiply
{
    [self processOp: '*'];
}

-(IBAction) clickDivide
{
    [self processOp: '/'];
}


//Misc. Keys
/*
 -(IBAction) clickOver
 {
 [self storeFracPart];
 isNumerator = NO;
 [displayString appendString:@"/"];
 display.text = displayString;
 }
 */


//This is E21.2 CH21
-(IBAction) clickOver
{
    [self storeFracPart];
    isNumerator = NO;
    isNegative  = NO;
    [displayString appendString:@"/"];
    display.text = displayString;
}

/*
 -(IBAction) clickEquals
 {
 if (firstOperand == NO)
 {
 [self storeFracPart];
 [myCalculator performOperation: op];
 
 [displayString appendString: @"="];
 [displayString appendString: [myCalculator.accumulator convertToString]];
 display.text = displayString;
 
 currentNumber = 0;
 isNumerator = YES;
 firstOperand = YES;
 [displayString setString:@""];
 }
 }
 */


//This is E21.2 CH21
/*
 -(IBAction) clickEquals
 {
 if (firstOperand == NO)
 {
 [self storeFracPart];
 [myCalculator performOperation: op];
 
 [displayString appendString: @"="];
 [displayString appendString: [myCalculator.accumulator convertToString]];
 display.text = displayString;
 
 currentNumber = 0;
 isNumerator = YES;
 firstOperand = YES;
 isWriting = NO;
 isNegative = NO;
 [displayString setString:@""];
 }
 }
 */

//This is E21.3 CH21
/*
 -(IBAction) clickEquals
 {
 if (firstOperand == NO)
 {
 [self storeFracPart];
 
 if ((!myCalculator.operand1.denominator) || (!myCalculator.operand2.denominator) || (!myCalculator.operand2.numerator && (op == '/')))
 //This check for division by zero, and covers the case when the user enters a first fraction, then chooses the divide operation and then enters a second fraction with a numerator of 0.
 {
 [myCalculator clear]; //This clears the calculator to avoid a valid result from the previous calculation messing up the Convert button.
 [displayString setString:@"Error"];
 display.text = displayString;
 }
 
 else
 {
 [myCalculator performOperation: op];
 
 [displayString appendString: @"="];
 [displayString appendString: [myCalculator.accumulator convertToString]];
 display.text = displayString;
 }
 
 currentNumber = 0;
 isNumerator = YES;
 firstOperand = YES;
 isWriting = NO;
 isNegative = NO;
 [displayString setString:@""];
 }
 }
 */

//This is E21.4 CH21
-(IBAction) clickEquals
{
    if (firstOperand == NO)
    {
        [self storeFracPart];
        
        if ((!myCalculator.operand1.denominator) || (!myCalculator.operand2.denominator) || (!myCalculator.operand2.numerator && (op == '/')))
            //This checks for division by zero, and covers the case when the user enters a first fraction, then chooses the divide operation and then enters a second fraction with a numerator of 0.
        {
            [myCalculator clear]; //This clears the calculator to avoid a valid result from the previous calculation messing up the Convert button.
            [displayString setString:@"Error"];
            display.text = displayString;
        }
        
        else
        {
            [myCalculator performOperation: op];
            
            [displayString appendString: @"="];
            [displayString appendString: [myCalculator.accumulator convertToString]];
            display.text = displayString;
        }
        
        //Here we clear the secondary display
        [displayStringSecond setString:@""];
        displaySecond.text = displayStringSecond;
        
        currentNumber = 0;
        isNumerator = YES;
        firstOperand = YES;
        pastFirstOperand = 0;
        isWriting = NO;
        isNegative = NO;
        [displayString setString:@""];
    }
}

/*
 -(IBAction) clickClear
 {
 isNumerator = YES;
 firstOperand = YES;
 currentNumber = 0;
 [myCalculator clear];
 
 [displayString setString:@""];
 display.text = displayString;
 }
 */


//This is E21.2 CH21
/*
 -(IBAction) clickClear
 {
 isNumerator = YES;
 firstOperand = YES;
 isWriting = NO;
 isNegative = NO;
 currentNumber = 0;
 [myCalculator clear];
 
 [displayString setString:@""];
 display.text = displayString;
 }
 */

//This is E21.4 CH21
-(IBAction) clickClear
{
    isNumerator = YES;
    firstOperand = YES;
    isWriting = NO;
    isNegative = NO;
    pastFirstOperand = 0;
    currentNumber = 0;
    [myCalculator clear];
    
    [displayString setString:@""];
    display.text = displayString;
    
    //Here we clear the secondary display
    [displayStringSecond setString:@""];
    displaySecond.text = displayStringSecond;
}



//This is E21.1 CH21

-(IBAction) clickConvert
{
    NSString *displayConvertedString = [NSString stringWithFormat:@"%@ %c %@ = %F", [myCalculator.operand1 convertToString], op, [myCalculator.operand2 convertToString], [myCalculator.accumulator convertToNum]];
    
    display.text = displayConvertedString;
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
