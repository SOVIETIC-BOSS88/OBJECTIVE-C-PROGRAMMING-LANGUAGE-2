//
//  Complex.h
//  prog7.2ComplexTest
//
//  Created by SUREN HARUTYUNYAN on 18/8/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>

//This is E7.7 CH7
//--@interface section--
@interface Complex: NSObject

@property double real, imaginary;

-(void) print; // display as a + bi

-(Complex *) add: (Complex *) complexNum;


@end
