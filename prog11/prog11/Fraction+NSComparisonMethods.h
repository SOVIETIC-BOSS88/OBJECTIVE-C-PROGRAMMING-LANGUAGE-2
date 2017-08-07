//
//  Fraction+NSComparisonMethods.h
//  prog11
//
//  Created by SUREN HARUTYUNYAN on 8/9/16.
//  Copyright © 2016 ClassroomM. All rights reserved.
//

#import "Fraction.h"
#import "Fraction+Comparison.h"

@interface Fraction (NSComparisonMethods)

//This is E11.3 CH11
-(BOOL) isEqualTo:(Fraction *) f;
-(BOOL) isLessThanOrEqualTo: (Fraction *) f;
-(BOOL) isLessThan: (Fraction *) f;
-(BOOL) isGreaterThanOrEqualTo: (Fraction *) f;
-(BOOL) isGreaterThan: (Fraction *) f;
-(BOOL) isNotEqualTo: (Fraction *) f;

@end