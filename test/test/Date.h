//
//  Date.h
//  test
//
//  Created by SUREN HARUTYUNYAN on 7/9/16.
//  Copyright © 2016 ClassroomM. All rights reserved.
//

//
//  Date.h
//  prog13
//
//  Created by SUREN HARUTYUNYAN on 15/7/16.
//  Copyright © 2016 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>

//This is E13.6 CH13
#define IS_LEAP_YEAR(y) y % 4 == 0 && y % 100 != 0 || y % 400 == 0

@interface Date : NSObject

@property int day, month, year;

-(void) dateUpdate;

@end

