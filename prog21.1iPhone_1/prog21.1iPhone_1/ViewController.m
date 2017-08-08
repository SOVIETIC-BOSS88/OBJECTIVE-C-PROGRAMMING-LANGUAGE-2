//
//  ViewController.m
//  prog21.1iPhone_1
//
//  Created by SUREN HARUTYUNYAN on 8/8/17.
//  Copyright © 2017 ClassroomM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//This is P21.1 CH21
@synthesize display;

//This is P21.1 CH21
-(IBAction) click1
{
    display.text = @"1";
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
