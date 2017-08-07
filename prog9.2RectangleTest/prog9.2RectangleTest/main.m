//
//  main.m
//  prog9.2RectangleTest
//
//  Created by SUREN HARUTYUNYAN on 29/9/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Square.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        //This is P9.3 CH9
        Square *mySquare = [[Square alloc] init];
        
        //isMemberOf:
        
        if ( [mySquare isMemberOfClass: [Square class]] == YES )
            NSLog(@"mySquare is a member of Square class");
        
        if ( [mySquare isMemberOfClass:[Rectangle class]] == YES )
            NSLog(@"mySquare is a member of Rectangle class");
        
        if ( [mySquare isMemberOfClass: [NSObject class]] == YES )
            NSLog(@"mySquare is a member of NSObject class");
        
        
        //isKindOf:
        
        if ( [mySquare isKindOfClass:[Square class]] == YES )
            NSLog(@"mySquare is a kind of Square");
        
        if ( [mySquare isKindOfClass:[Rectangle class]] == YES )
            NSLog(@"mySquare is a kind of Rectangle");
        
        if ( [mySquare isKindOfClass:[NSObject class]] == YES )
            NSLog(@"mySquare is a kind of NSObject");
        
        
        //respondsTo:
        
        if ( [mySquare respondsToSelector: @selector (setSide:)] == YES)
            NSLog(@"mySquare responds to setSide: method");
        
        if ( [mySquare respondsToSelector: @selector (setWidth:andHeight:)] == YES)
            NSLog(@"mySquare responds to setWidth:andHeight: method");
        
        if ( [Square respondsToSelector: @selector (alloc)] == YES)
            NSLog(@"mySquare responds to alloc method");
        
        
        //instancesRespondTo:
        
        if ( [Rectangle instancesRespondToSelector: @selector (setSide:)] == YES)
            NSLog(@"Instances of Rectangle respond to setSide: method");
        
        if ( [Square instancesRespondToSelector: @selector (setSide:)] == YES)
            NSLog(@"Instances of Square respond to setSide: method");
        
        if ( [Square isSubclassOfClass: [Rectangle class]] == YES)
            NSLog(@"Square is a subclass of a Rectangle");
        
        
    }
    return 0;
}
