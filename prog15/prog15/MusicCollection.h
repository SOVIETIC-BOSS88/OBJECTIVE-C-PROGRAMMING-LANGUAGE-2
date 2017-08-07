//
//  MusicCollection.h
//  prog15
//
//  Created by SUREN HARUTYUNYAN on 8/9/16.
//  Copyright © 2016 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Playlist.h"
#import "Song.h"

@interface MusicCollection : NSObject

//This is E15.9 CH15
@property (nonatomic, copy) NSString *collectionOfPlaylistsName;
@property (nonatomic, strong) NSMutableArray *collectionOfPlaylists;
@property (nonatomic, copy) Playlist *library;

-(instancetype) initWithName: (NSString *) name;

-(void) addSong: (Song *) theSong toPlaylist: (Playlist *) thePlaylist;
-(void) removeSong: (Song *) theSong fromPlalist: (Playlist *) thePlaylist;

-(void) addPlaylist: (Playlist *) thePlaylist;
-(void) removePlaylist: (Playlist *) thePlaylist;

-(void) lookup: (NSString *) theName;

-(NSUInteger) entries;
-(void) list;



@end
