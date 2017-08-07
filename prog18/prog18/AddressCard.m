//
//  AddressCard.m
//  prog18
//
//  Created by SUREN HARUTYUNYAN on 8/6/17.
//  Copyright © 2017 ClassroomM. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard

//This is P15.11 CH15
//@synthesize name, email;

//This is E15.4 CH15
@synthesize name, firstName, lastName, email, address, state, city, zip, country, phoneNumber;

//This is E15.5 CH15
@synthesize myDictionary;


//This is P15.10 CH15
/*
 {
 NSString *name;
 NSString *email;
 }
 */

/*
 -(void) setName: (NSString *) theName
 {
 name = [NSString stringWithString: theName];
 }
 
 -(void) setEmail: (NSString *) theEmail
 {
 email = [NSString stringWithString: theEmail];
 }
 */

//Other setName: and setEmail: methods that can save a little work
/*
 -(void) setName: (NSString *) theName
 {
 if (name != theName)
 name = [NSString stringWithString: theName];
 }
 
 -(void) setEmail: (NSString *) theEmail
 {
 if (email != theEmail)
 email = [NSString stringWithString: theEmail];
 }
 */

/*
 -(NSString *) name
 {
 return name;
 }
 
 -(NSString *) email
 {
 return email;
 }
 */


//This is P15.11 CH15
/*
 -(void) setName: (NSString *) theName andEmail: (NSString *) theEmail
 {
 self.name = theName;
 self.email = theEmail;
 }
 */

//This is P15.10 CH15
/*
 -(void) print
 {
 NSLog(@"====================================");
 NSLog(@"|                                  |");
 NSLog(@"|  %-31s |", [name UTF8String]);
 NSLog(@"|  %-31s |", [email UTF8String]);
 NSLog(@"|                                  |");
 NSLog(@"|                                  |");
 NSLog(@"|                                  |");
 NSLog(@"|                                  |");
 NSLog(@"|       O                  O       |");
 NSLog(@"====================================");
 }
 */

//This is P15.15 CH15
//Compare the two names from the specified address cards
/*
 -(NSComparisonResult) compareNames: (id) element
 {
 return [self.name compare: [element name]];
 
 //We put "self", so it applies to the reciever of the NSString object. Remember page 140, and where we can refer to the NSString by it's fields, so inside the methos we can refer to the instance variable of the object we are sending the message to directly by name. For more information check the "Quick Help" section of the right panel, and these links:
 //-- http://classroomm.com/objective-c/index.php?topic=670.0
 //-- http://classroomm.com/objective-c/index.php?topic=1531.0
 //-- http://stackoverflow.com/questions/5178402/nsmutablearray-sort-using-selector
 
 
 //Page 186, in the "Note" section it says that we cannot use the dot operator with id variable. An attempt to do so will produce a compiler error.
 }
 */

//This is E15.4 CH15

-(void) setName: (NSString *) theName  andFirstName: (NSString *) theFirstName andLastName: (NSString *) theLastName andEmail: (NSString *) theEmail andAddress: (NSString *) theAddress andState: (NSString *) theState andCity: (NSString *) theCity andZip: (NSNumber *) theZip andCountry: (NSString *) theCountry andPhoneNumber: (NSNumber *) thePhoneNumber
{
    self.name = theName;
    self.firstName = theFirstName;
    self.lastName = theLastName;
    self.email = theEmail;
    self.address = theAddress;
    self.state = theState;
    self.city = theCity;
    self.zip = theZip;
    self.country = theCountry;
    self.phoneNumber = thePhoneNumber;
}


/*
 -(void) print
 {
 NSLog(@"====================================");
 NSLog(@"|                                  |");
 NSLog(@"|  %-31s |", [name UTF8String]);
 NSLog(@"|  %-31s |", [firstName UTF8String]);
 NSLog(@"|  %-31s |", [lastName UTF8String]);
 NSLog(@"|  %-31s |", [email UTF8String]);
 NSLog(@"|  %-31s |", [address UTF8String]);
 NSLog(@"|  %-31s |", [state UTF8String]);
 NSLog(@"|  %-31s |", [city UTF8String]);
 NSLog(@"|  %-31s |", [zip UTF8String]);
 NSLog(@"|  %-31s |", [country UTF8String]);
 NSLog(@"|  %-31s |", [phoneNumber UTF8String]);
 NSLog(@"|                                  |");
 NSLog(@"|                                  |");
 NSLog(@"|                                  |");
 NSLog(@"|                                  |");
 NSLog(@"|       O                  O       |");
 NSLog(@"====================================");
 }
 */



//This is E15.5 CH15
//Longe version of the below one
/*
 -(void) setName: (NSString *) theName  andFirstName: (NSString *) theFirstName andLastName: (NSString *) theLastName andEmail: (NSString *) theEmail andAddress: (NSString *) theAddress andState: (NSString *) theState andCity: (NSString *) theCity andZip: (NSInteger *) theZip andCountry: (NSString *) theCountry andPhoneNumber: (NSInteger *) thePhoneNumber
 {
 [myDictionary setObject: [NSString stringWithString: theName] forKey: @"name"];
 [myDictionary setObject: [NSString stringWithString: theFirstName] forKey: @"firstName"];
 [myDictionary setObject: [NSString stringWithString: theLastName] forKey: @"lastName"];
 [myDictionary setObject: [NSString stringWithString: theEmail] forKey: @"email"];
 [myDictionary setObject: [NSString stringWithString: theAddress] forKey: @"address"];
 [myDictionary setObject: [NSString stringWithString: theState] forKey: @"state"];
 [myDictionary setObject: [NSString stringWithString: theCity] forKey: @"city"];
 [myDictionary setObject: [NSNumber numberWithInteger: *theZip] forKey: @"zip"];
 [myDictionary setObject: [NSString stringWithString: theCountry] forKey: @"country"];
 [myDictionary setObject: [NSNumber numberWithInteger: *thePhoneNumber] forKey: @"phoneNumber"];
 }
 */

//A shorter version of the above
-(void) setName: (NSString *) theName  andEmail: (NSString *) theEmail
{
    [myDictionary setObject: [NSString stringWithString: theName] forKey: @"name"];
    [myDictionary setObject: [NSString stringWithString: theEmail] forKey: @"email"];
}

-(void) print
{
    NSLog(@"====================================");
    NSLog(@"|                                  |");
    NSLog(@"|  %-31s |", [[myDictionary objectForKey: @"name"] UTF8String]);
    NSLog(@"|  %-31s |", [[myDictionary objectForKey: @"firstName"] UTF8String]);
    NSLog(@"|  %-31s |", [[myDictionary objectForKey: @"lastName"] UTF8String]);
    NSLog(@"|  %-31s |", [[myDictionary objectForKey: @"email"] UTF8String]);
    NSLog(@"|  %-31s |", [[myDictionary objectForKey: @"address"] UTF8String]);
    NSLog(@"|  %-31s |", [[myDictionary objectForKey: @"state"] UTF8String]);
    NSLog(@"|  %-31s |", [[myDictionary objectForKey: @"city"] UTF8String]);
    NSLog(@"|  %-31li |", [[myDictionary objectForKey: @"zip"] integerValue]);
    NSLog(@"|  %-31s |", [[myDictionary objectForKey: @"country"] UTF8String]);
    NSLog(@"|  %-31li |", [[myDictionary objectForKey: @"phoneNumber"] integerValue]);
    NSLog(@"|                                  |");
    NSLog(@"|                                  |");
    NSLog(@"|                                  |");
    NSLog(@"|                                  |");
    NSLog(@"|       O                  O       |");
    NSLog(@"====================================");
}

-(BOOL) isEqual: (AddressCard *) theCard
{
    if ( [ [self.myDictionary objectForKey: @"firstName"] isEqualTo: [ [theCard myDictionary] objectForKey: @"firstName"] ] && [[myDictionary objectForKey: @"email"] isEqualTo:[[theCard myDictionary] objectForKey: @"email"] ] )
    {
        return YES;
    }
    else
        return NO;
}

-(NSComparisonResult) compareNames: (id) element
{
    return [ [self.myDictionary objectForKey: @"firstName"] compareNames: [[element myDictionary] objectForKey: @"firstName"]];
}


//This is E18.1 CH18

-(AddressCard *) copyWithZone: (NSZone *) zone
{
    AddressCard *newCard = [[AddressCard allocWithZone:zone] init];
    [newCard assignName:name andEmail:email];
    return newCard;
}


-(void) assignName: (NSString *) theName andEmail: (NSString *) theEmail
{
    name = theName;
    email = theEmail;
}



@end
