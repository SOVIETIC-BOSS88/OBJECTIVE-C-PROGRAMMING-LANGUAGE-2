//
//  AddressBook.h
//  prog19
//
//  Created by SUREN HARUTYUNYAN on 11/6/17.
//  Copyright © 2017 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

//This is P19.7 CH19
@interface AddressBook : NSObject <NSCoding, NSMutableCopying, NSCopying>
{
    NSString *bookName;
    NSMutableArray *book;
}

//This is P19.5 CH19
//@interface AddressBook : NSObject <NSCoding, NSMutableCopying, NSCopying>

//@interface AddressBook : NSObject <NSCopying>

//This is P15.12 CH15
@property (nonatomic, copy) NSString *bookName;
@property (nonatomic, strong) NSMutableArray *book;


-(instancetype) initWithName: (NSString *) name;

//-(void) addCard: (AddressCard *) theCard;
-(NSUInteger) entries;
-(void) list;

//This is E15.4 CH15
//-(void) list;

//This is P15.13 CH15
//-(AddressCard *) lookup: (NSString *) theName;

//This is P15.14 CH15
-(void) removeCard: (AddressCard *) theCard;

//This is P15.15 CH15
-(void) sort;

//This is E15.2 CH15
//-(AddressCard *) lookup: (NSString *) theName;

//This is E15.3 CH15
//-(NSArray *) lookupAll: (NSString *) theName;

//This is E15.5 CH15
//-(NSArray *) lookupAll: (NSString *) theName;

//This is E15.6 CH5
-(BOOL) removeName: (NSString *) theName;

//This is E15.11 CH15
-(void) addCard: (AddressCard *) theCard;

//This is E18.1 CH18
-(id) copyWithZone: (NSZone *) zone;

//This is P19.5 CH19
-(void) encodeWithCoder:(NSCoder *) encoder;
-(id) initWithCoder:(NSCoder *) decoder;

//This is P19.7 CH19
-(id) mutableCopyWithZone:(NSZone *) zone;


//This is E19.4 CH19
-(NSMutableArray *) lookupAll: (NSString *) theName;


@end
