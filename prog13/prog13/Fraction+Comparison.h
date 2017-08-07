//
//  Fraction+Comparison.h
//  prog13
//
//  Created by SUREN HARUTYUNYAN on 8/9/16.
//  Copyright © 2016 ClassroomM. All rights reserved.
//

#import "Fraction.h"

@interface Fraction (Comparison)

//This is E11.2 CH11
//-(BOOL) isEqualTo: (Fraction *) f;
-(int) compare: (Fraction *) f;

@end

