//
//  main.m
//  prog8.1ClassABC
//
//  Created by SUREN HARUTYUNYAN on 16/9/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassA.h"
#import "ClassB1.h"
#import "ClassC.h"
#import "ClassB2.h"

int main(int argc, const char * argv[])

{
    @autoreleasepool {
        
        //This is P8.7 CH8
        ClassA *a = [[ClassA alloc] init];
        
        //This is P8.6 CH8
        ClassB1 *b = [[ClassB1 alloc] init];
        
        //This is E8.1 CH8
        ClassC *c = [[ClassC alloc] init];
        
        //This is E8.3 CH8
        ClassB2 *b2 = [[ClassB2 alloc] init];
        
        //This is P8.7 CH8
        [a initVar];
        [a printVar];
        
        //This is P8.6 CH8
        [b initVar]; //This uses overriding method in B
        [b printVar]; //This reveals the value of x;
        
        //This is E8.1 CH8
        [c initVar];
        [c printVar];
        
        //This is E8.3 CH8
        [b2 initVar];
        [b2 printVar];
        
        
    }
    return 0;
}
