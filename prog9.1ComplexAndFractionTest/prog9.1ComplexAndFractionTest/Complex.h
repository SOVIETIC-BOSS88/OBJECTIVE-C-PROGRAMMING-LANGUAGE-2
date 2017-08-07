//
//  Complex.h
//  prog9.1ComplexAndFractionTest
//
//  Created by SUREN HARUTYUNYAN on 29/9/15.
//  Copyright (c) 2015 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>

//This is P9.1 CH9
@interface Complex: NSObject

@property double real, imaginary;

-(void) print; // display as a + bi
-(void) setReal: (double) a andImaginary: (double) b;
-(Complex *) add: (Complex *) f;

//This is E9.4 CH9
-(id)   addId: (id) f;

@end
