//
//  Date.m
//  prog13
//
//  Created by SUREN HARUTYUNYAN on 15/7/16.
//  Copyright © 2016 ClassroomM. All rights reserved.
//

#import "Date.h"

//This is E13.6 CH13
static int maxDayInMonth (int month, int year)
{
    switch (month)
    {
        case 1:
        case 3:
        case 5:
        case 7:
        case 8:
        case 10:
        case 12:
            return 31;
            break;
            
        case 2:
            if (IS_LEAP_YEAR(year))
            {
                return 29;
            }
            else
                return 28;
            
        default:
            return 30;
            break;
    }
    return month;
}


@implementation Date

@synthesize day, month, year;

//This is E13.6 CH13
-(void) dateUpdate
{
    if (day + 1 > maxDayInMonth(month, year))
    {
        day = 1;
        if (month == 12)
        {
            month = 1;
            year += 1;
        }
        else
            month += 1;
    }
    else day += 1;
}




@end
