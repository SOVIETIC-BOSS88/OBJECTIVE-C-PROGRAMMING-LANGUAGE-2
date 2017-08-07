//
//  Foo.m
//  prog19
//
//  Created by SUREN HARUTYUNYAN on 12/6/17.
//  Copyright © 2017 ClassroomM. All rights reserved.
//

#import "Foo.h"

@implementation Foo

@synthesize strVal, intVal, floatVal;

//This is P19.8 CH19
-(void) encodeWithCoder:(NSCoder *) encoder
{
    [encoder encodeObject: strVal forKey: @"FoostrVal"];
    [encoder encodeInt: intVal forKey: @"FoointVal"];
    [encoder encodeFloat: floatVal forKey: @"FoofloatVal"];
}

-(id) initWithCoder:(NSCoder *) decoder
{
    strVal = [decoder decodeObjectForKey:@"FoostrVal"];
    intVal = [decoder decodeIntForKey:@"FoointVal"];
    floatVal = [decoder decodeFloatForKey:@"FoofloatVal"];
    
    return self;
}


@end
