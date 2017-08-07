//
//  Playlist.h
//  prog15
//
//  Created by SUREN HARUTYUNYAN on 8/9/16.
//  Copyright © 2016 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Song.h"

@interface Playlist : NSObject

//This is E15.9 CH15

@property (nonatomic, copy) NSString *theNameOfThePlaylist ;
@property (nonatomic, strong) NSMutableArray *collectionOfSongs;

-(instancetype) initWithName: (NSString *) name;
-(instancetype) init;

-(void) addSong: (Song *) theSong;
-(void) removeSong: (Song *) theSong;

-(NSUInteger) entries;
-(void) list;


@end
