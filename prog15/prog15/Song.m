//
//  Song.m
//  prog15
//
//  Created by SUREN HARUTYUNYAN on 8/9/16.
//  Copyright © 2016 ClassroomM. All rights reserved.
//

#import "Song.h"

@implementation Song

@synthesize title, artist, album, playingTime;

//This is E15.9 CH15

-(void) setTitle: (NSString *) theTitle  andArtist: (NSString *) theArtist andAlbum: (NSString *) theAlbum andPlayingTime: (NSString *) thePlayingTime;
{
    self.title = theTitle;
    self.artist = theArtist;
    self.album = theAlbum;
    self.playingTime = thePlayingTime;
}

-(void) print
{
        NSLog(@"====================================");
        NSLog(@"|                                  |");
        NSLog(@"|  %-31s |", [title UTF8String]);
        NSLog(@"|  %-31s |", [artist UTF8String]);
        NSLog(@"|  %-31s |", [album UTF8String]);
        NSLog(@"|  %-31s |", [playingTime UTF8String]);
        NSLog(@"|                                  |");
        NSLog(@"|                                  |");
        NSLog(@"|                                  |");
        NSLog(@"|                                  |");
        NSLog(@"|       O                  O       |");
        NSLog(@"====================================");
}

@end
