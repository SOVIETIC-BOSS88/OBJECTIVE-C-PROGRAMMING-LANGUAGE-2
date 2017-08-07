//
//  Playlist.m
//  prog15
//
//  Created by SUREN HARUTYUNYAN on 8/9/16.
//  Copyright © 2016 ClassroomM. All rights reserved.
//

#import "Playlist.h"

@implementation Playlist

//This is E15.9 CH15

@synthesize theNameOfThePlaylist, collectionOfSongs;

-(instancetype) initWithName: (NSString *) name
{
    self = [super init];
    
    if (self)
    {
        self.theNameOfThePlaylist = [NSString stringWithString: name];
        collectionOfSongs = [NSMutableArray array];
    }
    return self;
}

-(instancetype) init
{
    return [self initWithName: @"NoName"];
}


-(void) addSong: (Song *) theSong
{
    if ([collectionOfSongs containsObject: theSong] == NO)
    [collectionOfSongs addObject: theSong];
}

-(void) removeSong: (Song *) theSong
{
    if ([collectionOfSongs containsObject: theSong] == YES)
    [collectionOfSongs removeObjectIdenticalTo: theSong];
}

-(NSUInteger) entries
{
    return [collectionOfSongs count];
}

-(void) list
{
    NSLog(@"================ Contents of: %@ ===============", theNameOfThePlaylist);
    
    for (Song *theSong in collectionOfSongs)
        NSLog(@"%-12s  %-12s %-12s %-12s",
              [theSong.title UTF8String], [theSong.artist UTF8String],
              [theSong.album UTF8String], [theSong.playingTime UTF8String]);
    
    NSLog(@"========================================================");
}

@end
