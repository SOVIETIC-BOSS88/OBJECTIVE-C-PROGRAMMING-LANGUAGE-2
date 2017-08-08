//
//  ViewController.h
//  prog21.2Fraction_Calculator
//
//  Created by SUREN HARUTYUNYAN on 8/8/17.
//  Copyright © 2017 ClassroomM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//This is P21.2 CH21
@property (strong, nonatomic) IBOutlet UILabel *display;

//This is E21.4 CH21
@property (strong, nonatomic) IBOutlet UILabel *displaySecond;


//-(void)viewDidLoad;

//This is E21.2 CH21
//- (void)viewDidLoad;

//This is E21.4 CH21
- (void)viewDidLoad;


//This is P21.2 CH21
//-(void) processDigit: (int) digit;

//This is E21.2 CH21
-(void) processDigit: (int) digit;

//-(void) processOp: (char) theOp;

//This is E21.2 CH21
-(void) processOp: (char) theOp;

-(void) storeFracPart;

//Numeric keys
-(IBAction) clickDigit: (UIButton *) sender;

//Arithmetic Operation keys
-(IBAction) clickPlus;
-(IBAction) clickMinus;
-(IBAction) clickMultiply;
-(IBAction) clickDivide;

//Misc. Keys
//-(IBAction) clickOver;

//This is E21.2 CH21
-(IBAction) clickOver;

//-(IBAction) clickEquals;

//This is E21.2 CH21
//-(IBAction) clickEquals;

//This is E21.3 CH21
//-(IBAction) clickEquals;

//This is E21.4 CH21
-(IBAction) clickEquals;

//-(IBAction) clickClear;

//This is E21.2 CH21
//-(IBAction) clickClear;

//This is E21.4 CH21
-(IBAction) clickClear;

//This is E21.1 CH21
-(IBAction) clickConvert;

@end

