//
//  NSString+TempFiles.m
//  prog16
//
//  Created by SUREN HARUTYUNYAN on 5/6/17.
//  Copyright © 2017 ClassroomM. All rights reserved.
//

#import "NSString+TempFiles.h"

//This is E16.5 CH16
@implementation NSString (TempFiles)

+(NSString *) temporaryFileName
{
    NSString *tempDir = [NSString stringWithString:NSTemporaryDirectory()];
    NSString *tempName = [NSString stringWithString:[[NSProcessInfo processInfo] globallyUniqueString]];
    
    return [NSString stringWithString:[tempDir stringByAppendingString:tempName]];
}


@end
