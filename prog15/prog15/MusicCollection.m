//
//  MusicCollection.m
//  prog15
//
//  Created by SUREN HARUTYUNYAN on 8/9/16.
//  Copyright © 2016 ClassroomM. All rights reserved.
//

#import "MusicCollection.h"

@implementation MusicCollection

//This is E15.9 CH15

@synthesize collectionOfPlaylistsName,collectionOfPlaylists, library;

-(instancetype) initWithName: (NSString *) name
{
    self = [super init];
    
    if (self)
    {
        collectionOfPlaylistsName = [NSString stringWithString: name];
        collectionOfPlaylists = [[NSMutableArray alloc] init];
        library = [[Playlist alloc] initWithName: @"library"];
        [collectionOfPlaylists addObject: library];
    }
    return self;
}

-(void) addSong: (Song *) theSong toPlaylist: (Playlist *) thePlaylist
{
    if ([thePlaylist.collectionOfSongs containsObject: theSong] == NO)
        [thePlaylist addSong: theSong];
    if ([library.collectionOfSongs containsObject: theSong] == NO)
        [library addSong: theSong];
}

-(void) removeSong: (Song *) theSong fromPlalist: (Playlist *) thePlaylist
{
    if ([thePlaylist isEqualTo: library])
    {
        [library removeSong: theSong];
        
        //We also look through the playlists and remove the song if it's there
        for (Playlist *thePlaylist in collectionOfPlaylists)
            [thePlaylist removeSong: theSong];
    }
    else
    {
        if ([thePlaylist.collectionOfSongs containsObject: theSong] == YES)
            [thePlaylist removeSong: theSong];
    }
}

-(void) addPlaylist: (Playlist *) thePlaylist
{
    if ([collectionOfPlaylists containsObject: thePlaylist] == NO)
        [collectionOfPlaylists addObject: thePlaylist];
}

-(void) removePlaylist: (Playlist *) thePlaylist
{
    if ([collectionOfPlaylists containsObject: thePlaylist] == YES)
        [collectionOfPlaylists removeObjectIdenticalTo: thePlaylist];
}

-(void) lookup: (NSString *) theName
{
    NSMutableArray *results = [[NSMutableArray alloc] init];
    
    for (Song *theSong in library.collectionOfSongs)
    {
        if (([theSong.title rangeOfString: theName options:NSCaseInsensitiveSearch]).location != NSNotFound
            ||
            ([theSong.artist rangeOfString: theName options:NSCaseInsensitiveSearch]).location != NSNotFound      ||
            ([theSong.album rangeOfString: theName options:NSCaseInsensitiveSearch]).location != NSNotFound)
            [results addObject: theSong];
    }
    for (Song *theSong in results)
        [theSong print];
}

-(NSUInteger) entries
{
    return [collectionOfPlaylists count];
}

-(void) list
{
    NSLog(@"===================== Contents of: %@ =====================", collectionOfPlaylistsName);
    
   
    for (Playlist *thePlaylist in collectionOfPlaylists)
    {
        NSLog(@"%-12s",
        [thePlaylist.theNameOfThePlaylist UTF8String]);
        
    }
    
    NSLog(@"=================================================================");
}



@end
