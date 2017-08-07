//
//  ClassA.h
//  prog8.1ClassABC
//
//  Created by SUREN HARUTYUNYAN on 17/9/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

//This is P8.6 CH8

//Overriding methods

#import <Foundation/Foundation.h>

//ClassA declaration and definition
@interface ClassA: NSObject


{
    int x; //This will be inherited by subclasses
}

-(void) initVar;
-(void) printVar;

@end

