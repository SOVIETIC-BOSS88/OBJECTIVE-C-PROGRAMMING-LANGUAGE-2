//
//  Rectangle.m
//  prog8.2Rectangle
//
//  Created by SUREN HARUTYUNYAN on 16/9/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import "Rectangle.h"

//This is P8.2 CH8
@implementation Rectangle

{
    XYPoint *origin, *translate;
}

@synthesize width, height;

//This is E8.8 CH8
-(void) draw
{
    // Counter vars to be used by the for loops
    // int w;
    // int h;
    
    // for loop to draw the top dashes
    for (int w = 0; w < self.width; w++)
    {
        printf("-");
    }
    printf("\n");
    
    // for loops (not one nested) to draw pipe symbols and spaces
    for (int h = 0; h < self.height; h++)
    {
        for (int w = 0; w < self.width; w++)
        {
            if ((w == 0 || w == self.width - 1))
            {
                printf("|");
            }
            else
                printf(" ");
        }
        printf("\n");
    }
    
    // for loop to draw the bottom dashes
    for (int w = 0; w < self.width; w++)
    {
        printf("-");
    }
    
    printf("\n");
}


//This is E8.7 CH8

//  basically checks the each of all points of target if it is contained by receiver.
//  the first contained point is overlap rectangle's origin.
//  after that, update the width and height of overlap rectangle whenever new contained point happens.

-(Rectangle *) intersect: (Rectangle *) aRectangle
{
    Rectangle *temporaryRectangle = [[Rectangle alloc] init]; //This is the rectangle where we put the origin of overlap (it the 3rd      rect or middle rect)
    XYPoint *myPoint              = [[XYPoint alloc] init];   //This is where we will have our point of origin of 2nd rect
    int howManyPoints = 0;
    
    for (int x = aRectangle.origin.x; x <= aRectangle.origin.x + aRectangle.width; x++)
    {
        for (int y = aRectangle.origin.y; y <= aRectangle.origin.y + aRectangle.height; y++)
        {
            [myPoint setX:x andY: y];
            if ([self containsPoint: myPoint])  //Here we want to see if myPoint is contained in the reciever rectangle (which is the 1st rect)
                
                //Once we find the first points that is contained the next if statement is trigerred, if it's not contained, ie. it return a NO answer to cointansPoint, the it will skip the next if, and it will go to return statement
            {
                if (howManyPoints == 0)          //If it is true that we have 0 points contained (or that this is the 1st containtment)---->
                    //This way we will know the origin of the overlap (the famous 400, 420 of the book)
                    
                {
                    howManyPoints++;
                    temporaryRectangle.origin = myPoint; //It adds +1 to howManyPoints---->
                    //After the temporaryRectangle will have the values of myPoint but only those contained
                    //So we set the origin of the overlap
                }
                
                else                                     //If its not the first containment we update the values of width and height
                    [temporaryRectangle setWidth: x - temporaryRectangle.origin.x andHeight: y - temporaryRectangle.origin.y];
            }
        }
    }
    return temporaryRectangle;
}


/*
 //This is another example from the web page, from a guy called nikki2pro, 4th ed, exercices 8th... this is a very generous community
 
 -(Rectangle *) intersect: (Rectangle *) targetRectangle
 {
 int i, j;
 XYPoint *value = [[XYPoint alloc] init];
 Rectangle *overlap = [[Rectangle alloc] init];
 BOOL isfirst = NO;
 
 [overlap setOrigin:value];                          // initialize the origin of overlap
 value.x = targetRectangle.origin.x;                 // initialize the point to be compared
 value.y = targetRectangle.origin.y;
 
 for (i = 0; i <= (int)(targetRectangle.height); i++)        // loop for all points of target Rectangle
 {
 for (j = 0; j <= (int)(targetRectangle.width); j++)
 {
 if ([self containsPoint:value])                 // checks if the current point is within the receiver self
 {
 if (!isfirst)                               // checks if it's the first containment
 {
 overlap.origin.x = value.x;           // sets the origin of overlap
 overlap.origin.y = value.y;
 isfirst = YES;
 }
 else
 {
 overlap.width = value.x - overlap.origin.x;      // update the width of overlap
 overlap.height = value.y - overlap.origin.y;     // update the height of overlap
 }
 }
 value.x += 1;
 }
 value.x = targetRectangle.origin.x;          // reset the x of searching point
 value.y += 1;
 
 
 }
 
 return overlap;      // if no overlap area, the initialized overlap will be returned.
 
 }
 */

//This is E8.6 CH8
-(BOOL) containsPoint: (XYPoint *) aPoint;
{
    if ((aPoint.x >= origin.x && aPoint.x <= (origin.x + width)) &&
        (aPoint.y >= origin.y && aPoint.y <= (origin.y + height)))
        return YES;
    
    else
        return NO;
}

//This is E8.4 CH8
-(void) translate: (XYPoint *) t
{
    origin.x += t.x;
    origin.y += t.y;
}

//This is P8.4 CH8
/*
-(void) setOrigin: (XYPoint *) pt
{
    origin = pt;
}
*/

//This is P8.5 CH8
-(void) setOrigin: (XYPoint *) pt
{
    if (! origin)
        origin = [[XYPoint alloc] init];
    
    
    origin.x = pt.x;
    origin.y = pt.y;
}

-(XYPoint *) origin
{
    return origin;
}

-(void) setWidth: (int) w andHeight: (int) h;
{
    width = w;
    height = h;
}

-(int) area;
{
    return width * height;
}

-(int) perimeter;
{
    return (width + height) * 2;
}

@end