//
//  AddressCard.h
//  prog19
//
//  Created by SUREN HARUTYUNYAN on 11/6/17.
//  Copyright © 2017 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>

//This is P19.5 CH19
@interface AddressCard : NSObject <NSCoding, NSCopying>

//@interface AddressCard : NSObject <NSCopying>

//This is P15.11 CH15
//@property (copy, nonatomic) NSString *name, *email;

//This is E15.4 CH15
@property (copy, nonatomic) NSString *name, *firstName, *lastName, *email, *address, *state, *city, *country;
@property (copy, nonatomic) NSNumber *zip, *phoneNumber;

//This is E15.5 CH15
@property (copy, nonatomic) NSMutableDictionary *myDictionary;

//This is P15.10 CH15
/*
 -(void) setName: (NSString *) theName;
 -(void) setEmail: (NSString *) theEmail;
 
 -(NSString *) name;
 -(NSString *) email;
 */

//This is P15.11 CH15
-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail;

//This is P15.10 CH15
//-(void) print;

//This is E15.4 CH15
/*
-(void) setName: (NSString *) theName  andFirstName: (NSString *) theFirstName andLastName: (NSString *) theLastName andEmail: (NSString *) theEmail andAddress: (NSString *) theAddress andState: (NSString *) theState andCity: (NSString *) theCity andZip: (NSNumber *) theZip andCountry: (NSString *) theCountry andPhoneNumber: (NSNumber *) thePhoneNumber;
*/

-(void) print;


//This is P15.15 CH15
//Compare the two names from the specified address cards
//-(NSComparisonResult) compareNames: (id) element;

//This is E15.5 CH15
/*
 -(void) setName: (NSString *) theName  andFirstName: (NSString *) theFirstName andLastName: (NSString *) theLastName andEmail: (NSString *) theEmail andAddress: (NSString *) theAddress andState: (NSString *) theState andCity: (NSString *) theCity andZip: (NSInteger *) theZip andCountry: (NSString *) theCountry andPhoneNumber: (NSInteger *) thePhoneNumber;
 */

//-(void) setName: (NSString *) theName  andEmail: (NSString *) theEmail;

//-(void) print;

-(BOOL) isEqual: (AddressCard *) theCard;

//Compare the two names from the specified address cards
-(NSComparisonResult) compareNames: (id) element;


//This is E18.1 CH18
-(AddressCard *) copyWithZone: (NSZone *) zone;

//Additional method for NSCopying protocol
-(void) assignName: (NSString *) theName andEmail: (NSString *) theEmail;


//This is P19.5 CH19
-(void) encodeWithCoder:(NSCoder *) encoder;
-(id) initWithCoder:(NSCoder *) decoder;

//This is P19.7 CH19
-(id) mutableCopyWithZone: (NSZone *) zone;

@end
