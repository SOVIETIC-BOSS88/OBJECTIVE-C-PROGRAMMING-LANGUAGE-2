//
//  main.m
//  prog8.2Rectangle
//
//  Created by SUREN HARUTYUNYAN on 16/9/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Square.h"
#import "XYPoint.h"
#import "GraphicObject.h"
#import "Circle.h"
#import "Triangle.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        //This is P8.3 CH8
        Square *mySquare = [[Square alloc] init];
        
        //This is P8.2 CH8
        Rectangle *myRectangle = [[Rectangle alloc] init];
        
        //This is P8.4 CH8
        XYPoint *myPoint = [[XYPoint alloc] init];
        
        //This is E8.4 CH 8
        XYPoint *myTranslate = [[XYPoint alloc] init];
        
        //This is E8.5 CH8
        Circle *myCircle = [[Circle alloc] init];
        
        Triangle *myTriangle = [[Triangle alloc] init];
        
        //This is P8.3 CH8
        [mySquare setSide: 5];
        NSLog(@"Square s = %i", [mySquare side]);
        NSLog(@"Area = %i, Perimeter = %i", [mySquare area], [mySquare perimeter]);
        
        //This is P8.2 CH8
        // Save width and height in Rectangle
        [myRectangle setWidth: 5 andHeight: 8];
        
        // Test of methods
        NSLog(@"Rectangle: w = %i, h = %i", myRectangle.width, myRectangle.height);
        NSLog(@"Area = %i, Perimeter = %i", [myRectangle area], [myRectangle perimeter]);
        
        //This is P8.4 CH8
        [myPoint setX: 100 andY: 200];
        
        //In the book it goes like this:
        //[myRectangle setWidth: 5 andHeight: 8];
        
        myRectangle.origin = myPoint;
        
        //Test of the methods
        NSLog(@"Origin at (%i, %i)", myRectangle.origin.x, myRectangle.origin.y);
        
        //This is P8.5 CH8 and P8.5B CH8
        [myPoint setX: 50 andY: 50];
        NSLog(@"Origin at (%i, %i)", myRectangle.origin.x, myRectangle.origin.y);
        
        //myRectangle.origin.x = 50;
        
        //This is E8.4 CH8
        [myTranslate setX: 10 andY: 20];
        [myRectangle translate: myTranslate];
        
        NSLog(@"Origin at (%i, %i)", myRectangle.origin.x, myRectangle.origin.y);
        
        //To be sure that you understand this think of it this way. In the first version of P8.5 CH8, myPoint passes a pointer to the data. So they are referenceing the same data, i.e., a change in myPoint is a change in myRectangle's origin. But in the second version, the P8.5 CH8B, when we pass myPoint as an argument, it doesn't pass a pointer, we simply copy the contents of it in myRectangle's origin. So a change in myPoint is not producing a change in myRectangle's origin, because they are not referencing the same data.
        
        //This is E8.5 CH8
        myCircle.radius = 5;
        [myCircle setfillColor:1];
        [myCircle setlineColor:2];
        
        NSLog(@"My Circle's circumference is %.2f and the area is %.2f", [myCircle circumference], [myCircle area]);
        
        [myTriangle setSide1:10];
        [myTriangle setSide2:10];
        [myTriangle setSide3:10];
        [myTriangle setBase:10];
        [myTriangle setHeight:10];
        [myTriangle setfillColor:1];
        [myTriangle setlineColor:2];
        
        NSLog(@"My Triangle's perimeter is %i and the area is %i", [myTriangle perimeter], [myTriangle area]);
        
        //This is E8.6 CH8
        if ([myRectangle containsPoint:myPoint])
        {
            NSLog(@"The point is inside the rectangle");
        }
        else
            NSLog(@"The point isn't inside the rectangle");
        
        //This is E8.7 CH8
        Rectangle *firstRectangle = [[Rectangle alloc] init];
        Rectangle *secondRectangle = [[Rectangle alloc] init];
        Rectangle *resultRectangle = [[Rectangle alloc] init];
        XYPoint *rectanglePoint = [[XYPoint alloc]init];
        
        [firstRectangle setWidth:250 andHeight:75];
        rectanglePoint.x = 200;
        rectanglePoint.y = 420;
        firstRectangle.origin = rectanglePoint;
        
        [secondRectangle setWidth:100 andHeight:180];
        rectanglePoint.x = 400;
        rectanglePoint.y = 300;
        secondRectangle.origin = rectanglePoint;
        
        rectanglePoint.x = 400;
        rectanglePoint.y = 420;
        
        resultRectangle = [firstRectangle intersect: secondRectangle];
        NSLog(@"Origin is (%i,%i), width is %i and height is %i",
              resultRectangle.origin.x, resultRectangle.origin.y,
              resultRectangle.width, resultRectangle.height);
        
        //This is E8.8 CH8
        Rectangle *myRect = [[Rectangle alloc] init];
        [myRect setWidth: 10 andHeight: 3];
        [myRect draw];
    }
    return 0;
}