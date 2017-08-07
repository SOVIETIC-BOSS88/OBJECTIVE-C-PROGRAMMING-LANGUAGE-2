//
//  AddressBook.h
//  prog15
//
//  Created by SUREN HARUTYUNYAN on 25/7/16.
//  Copyright © 2016 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject

//This is P15.12 CH15
@property (nonatomic, copy) NSString *bookName;
@property (nonatomic, strong) NSMutableArray *book;


-(instancetype) initWithName: (NSString *) name;

//-(void) addCard: (AddressCard *) theCard;
-(NSUInteger) entries;
//-(void) list;

//This is E15.4 CH15
-(void) list;

//This is P15.13. CH15
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
-(NSArray *) lookupAll: (NSString *) theName;

//This is E15.6 CH5
-(BOOL) removeName: (NSString *) theName;

//This is E15.11 CH15
-(void) addCard: (AddressCard *) theCard;
@end
