//
//  Song.h
//  prog15
//
//  Created by SUREN HARUTYUNYAN on 8/9/16.
//  Copyright © 2016 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Song : NSObject

//This is E15.9 CH15

@property (copy, nonatomic) NSString *title, *artist, *album, *playingTime;

-(void) setTitle: (NSString *) theTitle  andArtist: (NSString *) theArtist andAlbum: (NSString *) theAlbum andPlayingTime: (NSString *) thePlayingTime;

-(void) print;


@end
