//
//  Foo.h
//  prog19
//
//  Created by SUREN HARUTYUNYAN on 12/6/17.
//  Copyright © 2017 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Foo : NSObject <NSCoding>

//This is P19.8 CH19
@property (copy, nonatomic) NSString *strVal;
@property int intVal;
@property float floatVal;

-(void) encodeWithCoder:(NSCoder *) encode;
-(id) initWithCoder:(NSCoder *) decoder;

@end
