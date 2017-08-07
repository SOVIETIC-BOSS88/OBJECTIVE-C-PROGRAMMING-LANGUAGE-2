//
//  main.m
//  prog15
//
//  Created by SUREN HARUTYUNYAN on 18/7/16.
//  Copyright © 2016 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"
#import "AddressBook.h"
#import "NSDate+ElapsedDays.h"
#import "Fraction.h"
#import "Fraction+Comparison.h"
#import "Fraction+NSComparisonMethods.h"
#import "Song.h"
#import "Playlist.h"
#import "MusicCollection.h"

//This is P15.19 CH19

//Add a print method to NSSet with the Printing category

@interface NSSet (Printing)

-(void) print;

@end

@implementation NSSet (Printing)

//This is P15.19 CH19

-(void) print
{
    printf("{ ");
    
    for (NSNumber *element in self)
        printf(" %li ", (long) [element integerValue]);
    
    printf("} \n");
}

@end

int main(int argc, const char * argv[]) {
    
    //This is P15.7 CH15
    int i; //This is written in form of a Command-Line Argument from page 300
    
    @autoreleasepool {
        
        //This is P15.1 CH15
        
        //Working with numbers
        NSNumber    *myNumber, *floatNumber, *intNumber;
        NSInteger   myInt;
        
        /*
         //integer value
         
         intNumber = [NSNumber numberWithInt: 100];
         myInt = [intNumber integerValue];
         NSLog(@"%li", (long) myInt);
         
         
         //long value
         
         myNumber = [NSNumber numberWithLong: 0xabcdef];
         NSLog(@"%lx", [myNumber longValue]);
         
         
         //char value
         
         myNumber = [NSNumber numberWithChar: 'X'];
         NSLog(@"%c", [myNumber charValue]);
         
         
         //float value
         
         floatNumber = [NSNumber numberWithFloat: 100.00];
         NSLog(@"%g", [floatNumber floatValue]);
         
         
         //double
         
         myNumber = [NSNumber numberWithDouble: 12345e+15];
         NSLog(@"%lg", [myNumber doubleValue]);
         
         
         //Wrong access here
         
         NSLog(@"%li", (long) [myNumber integerValue]);
         
         
         //Test two Numbers for equality
         
         if([intNumber isEqualToNumber: floatNumber] == YES)
         NSLog(@"Numbers are equal");
         else
         NSLog(@"Numbers are not equal");
         
         
         //Test if one Number is <, ==, or > second Number
         
         if ([intNumber compare: myNumber] == NSOrderedAscending)
         NSLog(@"First number is less than second");
         
         */
        
        //This is P15.2 CH15
        //Working with Literal Number Objects
        //integer
        
        intNumber = @100;
        myInt = [intNumber integerValue];
        NSLog(@"%li", (long) myInt);
        
        
        //long value
        
        myNumber = @0xabcdefL;
        NSLog(@"%lx", [myNumber longValue]);
        
        
        //char value
        
        myNumber = @'X';
        NSLog(@"%c", [myNumber charValue]);
        
        
        //float value
        
        floatNumber = @100.0f;
        NSLog(@"%g", [floatNumber floatValue]);
        
        
        //This is P15.3 CH15
        
        NSString *str = @"Programming is fun";
        
        NSLog(@"%@", str);
        
        
        //This is P15.4 CH15
        //Basic string operations
        /*
         NSString *str1 = @"This is string A";
         NSString *str2 = @"This is string B";
         NSString *res;
         NSComparisonResult compareResult;
         
         //Count the number of characters
         
         NSLog(@"Lenght of str1: %lu", [str1 length]);
         
         //Copy one string to another
         
         res = [NSString stringWithString: str1];
         NSLog(@"copy: %@", res);
         
         //Copy one strin to the end of the another
         
         str2 = [str1 stringByAppendingString: str2];
         NSLog(@"Concatenation: %@", str2);
         
         //Test of two string are equal
         
         if ([str1 isEqualToString: res] == YES)
         NSLog(@"str1 == res");
         else
         NSLog(@"str1 != res");
         
         //Test if one string is <, == or > than another
         
         compareResult = [str1 compare: str2];
         
         if (compareResult == NSOrderedAscending)
         NSLog(@"str1 < str2");
         else if (compareResult == NSOrderedSame)
         NSLog(@"str1 == str2");
         else //This is NSOrderedDescending
         NSLog(@"str1 > str2");
         
         //Convert a string to uppercase
         
         res = [str1 uppercaseString];
         NSLog(@"Uppercase conversion: %s", [res UTF8String]);
         
         
         //Convert a string to lowercase
         
         res = [str1 lowercaseString];
         NSLog(@"Lowercase conversion: %@", res);
         
         NSLog(@"Original string: %@", str1);
         */
        
        
        //This is P15.5 CH15
        /*
         NSString *str1 = @"This is string A";
         NSString *res;
         NSRange  subRange;
         
         //Extract first 3 chars from string
         
         res = [str1 substringToIndex: 3];
         NSLog(@"First 3 chars of str1: %@", res);
         
         
         //Extract chars to end of string starting at index 5
         
         res = [str1 substringFromIndex:5];
         NSLog(@"Chars from index 5 of str1: %@", res);
         
         
         //Extract chars from index 8 through 13 (6 chars)
         
         res = [[str1 substringFromIndex: 8] substringToIndex: 6];
         NSLog(@"Chars from indes 8 through 13: %@", res);
         
         //An easier wat to do the same thing
         
         res = [str1 substringWithRange: NSMakeRange (8, 6)];
         NSLog(@"Chars fom index 8 through 13: %@", res);
         
         
         //Locate one string inside another
         
         subRange = [str1 rangeOfString: @"string A"];
         NSLog(@"String is at index %lu, length 1is %lu", subRange.location, subRange.length);
         
         
         subRange = [str1 rangeOfString: @"string A"];
         
         if (subRange.location == NSNotFound)
         NSLog(@"String not found");
         else
         NSLog(@"String is at index %lu, length is %lu", subRange.location, subRange.length);
         */
        
        //This is P15.6 CH15
        
        NSString *str1 = @"This is string A";
        NSString *search, *replace;
        NSMutableString *mstr;
        NSRange substr;
        
        
        //Create mutable string from nonmutable
        
        mstr = [NSMutableString stringWithString: str1];
        NSLog(@"%@", mstr);
        
        
        //Insert characters
        
        [mstr insertString: @" mutable" atIndex: 7];
        NSLog(@"%@", mstr);
        
        
        //Effective concatenation if insert at end
        
        [mstr insertString: @" and string B" atIndex: [mstr length]];
        NSLog(@"%@", mstr);
        
        
        //Or can use appendString directly
        
        [mstr appendString: @" and string C"];
        NSLog(@"%@", mstr);
        
        
        //Delete substring based on range
        
        [mstr deleteCharactersInRange: NSMakeRange(16, 13)];
        NSLog(@"%@", mstr);
        
        
        //Find range first and then use it for deletion
        
        substr = [mstr rangeOfString: @"string B and "];
        
        if (substr.location != NSNotFound)
        {
            [mstr deleteCharactersInRange: substr];
            NSLog(@"%@", mstr);
        }
        
        
        //Set the mutable string directly
        
        [mstr setString: @"This is string A"];
        NSLog(@"%@", mstr);
        
        
        //Now let's replace a range of chars with another
        
        [mstr replaceCharactersInRange: NSMakeRange(8, 8)
                            withString: @"a mutable string"];
        
        NSLog(@"%@", mstr);
        
        
        //Search and replace
        
        search   = @"This is";
        replace  = @"An example of";
        
        substr = [mstr rangeOfString: search];
        
        if (substr.location != NSNotFound)
        {
            [mstr replaceCharactersInRange: substr withString: replace];
        }
        
        NSLog(@"%@", mstr);
        
        
        //Search and replace all occurences
        
        search  = @"a";
        replace = @"X";
        
        substr = [mstr rangeOfString: search];
        
        while (substr.location != NSNotFound)
        {
            [mstr replaceCharactersInRange: substr withString: replace];
            substr = [mstr rangeOfString: search];
        }
        
        NSLog(@"%@", mstr);
        
        
        //This is P15.7 CH15
        
        //Create an array to contain the month names
        /*
         NSArray *monthNames = [NSArray arrayWithObjects:
         @"January", @"February", @"March", @"April",
         @"May", @"June", @"July", @"August", @"September",
         @"October", @"November", @"December", nil];
         
         //Now list all the elements in the array
         
         NSLog(@"Month   Name");
         NSLog(@"=====   ====");
         
         for (i = 0; i < 12; ++i)
         NSLog(@"%2i     %@", i + 1, [monthNames objectAtIndex: i]);
         */
        
        //This is P15.8 CH15
        
        //Create an arrau to contain the month names
        
        NSArray *monthNames = @[@"January", @"February", @"March", @"April",
                                @"May", @"June", @"July", @"August", @"September",
                                @"October", @"November", @"December"];
        
        //Now list all the elements in the array
        
        NSLog(@"Month   Name");
        NSLog(@"=====   ====");
        
        for (i = 0; i < 12; ++i)
            NSLog(@"%2i     %@", i + 1, monthNames [i]);
        
        
        //This is P15.9 CH15
        
        NSMutableArray *numbers = [NSMutableArray array];
        int i;
        
        //Create an array with the numers 0-9
        
        for (i = 0; i < 10; ++i)
            numbers[i] = @(i);
        
        //Sequence through the array and dispaly the values
        
        for (i = 0; i < 10; ++i)
            NSLog(@"%@", numbers[i]);
        
        
        //Look how NSLog can display it with a single %@ format
        
        NSLog(@"====== Using a single NSLog");
        NSLog(@"%@", numbers);
        
        
        //This is P15.10 CH15
        /*
         NSString *aName = @"Julia Kochan";
         NSString *aEmail = @"jewls337@axlc.com";
         AddressCard *card1 = [[AddressCard alloc] init];
         
         
         [card1 setName: aName];
         [card1 setEmail: aEmail];
         
         [card1 print];
         */
        
        //This is P15.11 CH15
        /*
         NSString *aName = @"Julia Kochan";
         NSString *aEmail = @"jewls337@axlc.com";
         NSString *bName= @"Tony Iannino";
         NSString *bEmail = @"tony.iannino@techfitness.com";
         
         AddressCard *card1 = [[AddressCard alloc] init];
         AddressCard *card2 = [[AddressCard alloc] init];
         
         [card1 setName: aName andEmail: aEmail];
         [card2 setName: bName andEmail: bEmail];
         
         
         [card1 print];
         [card2 print];
         */
        
        //This is P15.12 CH15
        /*
         NSString *aName = @"Julia Kochan";
         NSString *aEmail = @"jewls337@axlc.com";
         
         NSString *bName= @"Tony Iannino";
         NSString *bEmail = @"tony.iannino@techfitness.com";
         
         NSString *cName= @"Stephen Kochan";
         NSString *cEmail = @"steve@classroomM.com";
         
         NSString *dName= @"Jamie Baker";
         NSString *dEmail = @"jbaker@classroomM.com";
         
         AddressCard *card1 = [[AddressCard alloc] init];
         AddressCard *card2 = [[AddressCard alloc] init];
         
         AddressCard *card3 = [[AddressCard alloc] init];
         AddressCard *card4 = [[AddressCard alloc] init];
         
         //Set up a new address book
         
         AddressBook *myBook = [[AddressBook alloc] initWithName: @"Linda's Address Book"];
         
         NSLog(@"Entries in address book after creation: %li", [myBook entries]);
         
         //Now set up four address cards
         
         [card1 setName: aName andEmail: aEmail];
         [card2 setName: bName andEmail: bEmail];
         
         [card3 setName: cName andEmail: cEmail];
         [card4 setName: dName andEmail: dEmail];
         
         
         //Add the cards to the address book
         
         [myBook addCard: card1];
         [myBook addCard: card2];
         [myBook addCard: card3];
         [myBook addCard: card4];
         
         NSLog(@"Entries in address book after adding cards: %li", [myBook entries]);
         
         
         //List all the entries in the book now
         
         [myBook list];
         */
        
        //This is P15.13 CH15
        /*
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        
        NSString *cName = @"Stephen Kochan";
        NSString *cEmail = @"steve@classroomM.com";
        
        NSString *dName = @"Jamie Baker";
        NSString *dEmail = @"jbaker@classroomM.com";
        */
        
        /*
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        */
        
        //Set up a new address book
        /*
        AddressBook *myBook = [[AddressBook alloc]
                               initWithName: @"Linda's Address Book"];
        
        AddressCard *myCard;
        */
        
        //Now set up four address cards
        /*
        [card1 setName: aName andEmail: aEmail];
        [card2 setName: bName andEmail: bEmail];
        [card3 setName: cName andEmail: cEmail];
        [card4 setName: dName andEmail: dEmail];
        */
        
        //Add some cards to the address book
        /*
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        [myBook addCard: card4];
        */
        
        //Look up a person by name
        /*
        NSLog(@"Lookup: Stephen Kochan");
        myCard = [myBook lookup: @"stephen kochan"];
        
        if (myCard != nil)
            [myCard print];
        else
            NSLog(@"Not found!");
        
        
        //Try another lookup
        
        NSLog(@"Lookup: Haibo Zhang");
        myCard = [myBook lookup: @"Haibo Zhang"];
        
        if (myCard != nil)
            [myCard print];
        else
            NSLog(@"Not found!");
        */
        
        //This is P15.14 CH15
        /*
         //Now remove the entry from the phone book
         
         [myBook removeCard: myCard];
         [myBook list]; //This is to verify it's gone
         */
        
        //This is P15.15 CH15
        
        //List the unsorted book
        
        //[myBook list];
        
        //Sort it and list it again
        
        //[myBook sort];
        //[myBook list];
        
        
        //This is P15.16 CH15
        /*
         NSMutableDictionary *glossary = [NSMutableDictionary dictionary];
         
         //Store three entries in the glossary
         
         [glossary setObject: @"A class defined so other classes can inherit from it"
         forKey: @"abstract class"];
         
         [glossary setObject: @"To implment all the methods defined in a protocol"
         forKey: @"adopt"];
         
         [glossary setObject: @"Storing an object for later use"
         forKey: @"archiving"];
         
         //Retrieve and display them
         
         NSLog(@"abstract class: %@", [glossary objectForKey: @"abstract class"]);
         NSLog(@"adopt: %@", [glossary objectForKey: @"adopt"]);
         NSLog(@"archiving: %@", [glossary objectForKey: @"archiving"]);
         */
        
        //This is P15.17 CH15
        /*
         NSMutableDictionary *glossary = [NSMutableDictionary dictionary];
         
         //Store three entries in the glossary
         
         glossary [@"abstract class"] = @"A class defined so other classes can inherit from it";
         
         glossary [@"adopt"] = @"To implment all the methods defined in a protocol";
         
         glossary [@"archiving"] = @"Storing an object for later use";
         
         
         //Retrieve and display them
         
         NSLog(@"abstract class: %@", glossary [@"abstract class"]);
         NSLog(@"adopt: %@", glossary [@"adopt"]);
         NSLog(@"archiving: %@", glossary [@"archiving"]);
         */
        
        //This P15.18 CH15
        /*
         NSDictionary *glossary =
         
         [NSDictionary dictionaryWithObjectsAndKeys:
         @"A class defined so other classes can inherit from it",
         @"abstract class",
         @"To implement all the methods defined in a prtocol",
         @"adopt",
         @"Storing an object for later use",
         @"archiving",
         nil
         ];
         
         //Print all key-value pair from the dictionary
         
         for (NSString *key in glossary)
         NSLog(@"%@: %@", key, [glossary objectForKey: key]);
         */
        
        //This is P15.18B CH15
        //It also can be written like this
        
        NSDictionary *glossary = @
        {
            @"abstract class": @"A class defined so other classes can inherit from it",
            @"adopt": @"To implement all the methods defined in a prtocol",
            @"archiving": @"Storing an object for later use"
        };
        
        //Print all key-value pair from the dictionary
        
        for (NSString *key in glossary)
            NSLog(@"%@: %@", key, [glossary objectForKey: key]);
        
        
        //This is P15.19 CH15
        
        NSMutableSet *set1 = [NSMutableSet setWithObjects:
                              @1, @3, @5, @10, nil];
        
        NSSet *set2 = [NSSet setWithObjects:
                       @-5, @100, @3, @5, nil];
        
        NSSet *set3 = [NSSet setWithObjects:
                       @12, @200, @3, nil];
        
        NSLog(@"set1: ");
        [set1 print];
        NSLog(@"set2: ");
        [set2 print];
        
        
        //Equality test
        
        if ([set1 isEqualToSet: set2] == YES)
            NSLog(@"set1 equals set2");
        else
            NSLog(@"set1 is not equal to set2");
        
        //Membership test
        
        if ([set1 containsObject: @10] == YES)
            NSLog(@"set1 contains 10");
        else
            NSLog(@"set1 does not contain 10");
        
        if ([set2 containsObject: @10] == YES)
            NSLog(@"set2 contains 10");
        else
            NSLog(@"set2 does not contain 10");
        
        
        //Add and remove objects from mutable set set1
        
        [set1 addObject: @4];
        [set1 removeObject: @10];
        NSLog(@"set1 after adding 4 and removing 10: ");
        [set1 print];
        
        
        //Get intersection of two sets
        
        [set1 intersectSet: set2];
        NSLog(@"set1 intersect set2:");
        [set1 print];
        
        
        //Union of two sets
        
        [set1 unionSet: set3];
        NSLog(@"set1 union set3");
        [set1 print];
        
        
        //This is E15.1 CH15
        
        NSDateComponents *dayMonthYear = [[NSDateComponents alloc] init];
        
        NSCalendar  *calendar = [[NSCalendar alloc]
                                 initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        
        [dayMonthYear setDay:1];
        [dayMonthYear setMonth:8];
        [dayMonthYear setYear:2016];
        
        NSDate *date1 = [calendar dateFromComponents:dayMonthYear];
        
        
        [dayMonthYear setDay:3];
        [dayMonthYear setMonth:8];
        [dayMonthYear setYear:2016];
        
        NSDate *date2 = [calendar dateFromComponents:dayMonthYear];
        
        NSLog(@"Elapsed days from %s to %s are %lu days",
              [date1.description UTF8String], [date2.description UTF8String], [date2 elapsedDays:date1]);
        
        
        //This is E15.2 CH15
        
        //Look up a person by name
        /*
        NSLog(@"Lookup: stephen");
        myCard = [myBook lookup: @"stephen"];
        
        if (myCard != nil)
            [myCard print];
        else
            NSLog(@"Not found");
        
        
        //Try another lookup
        
        NSLog(@"Lookup: steve");
        myCard = [myBook lookup: @"steve"];
        
        if (myCard != nil)
            [myCard print];
        else
            NSLog(@"Not found");
        
        
        //Last lookup
        
        NSLog(@"Lookup: bak");
        myCard = [myBook lookup: @"bak"];
        
        if (myCard != nil)
            [myCard print];
        else
            NSLog(@"Not found");
        */
        
        //This is E15.3 CH15
        //Remember this method is not producing any output because the data are put after the method invocation.
        //NSArray *matches = [[NSArray alloc] initWithArray: [myBook lookupAll: @"stephen"]];
        /*
        //Look up all mathches
        
        NSLog(@"Lookup: stephen");
        
        if (matches != nil)
        {
            for (AddressCard *foundCards in matches)
                [foundCards print];
        }
        else
            NSLog(@"Not found");
        */
        
        //This is E15.4 CH15
        /*
        NSString *aName = @"Julia Kochan";
        NSString *aFirstName = @"Julia";
        NSString *aLastName = @"Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *aAddress = @"A/A/A";
        NSString *aState = @"NY";
        NSString *aCity = @"New York City";
        NSString *aZip = @"0000";
        NSString *aCountry = @"USA";
        NSString *aPhoneNumber = @"000000000";
    
        NSString *bName = @"Tony Iannino";
        NSString *bFirstName = @"Tony";
        NSString *bLastName = @"Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        NSString *bAddress = @"B/B/B";
        NSString *bState = @"NY";
        NSString *bCity = @"New York City";
        NSString *bZip = @"1111";
        NSString *bCountry = @"USA";
        NSString *bPhoneNumber = @"111111111";

        NSString *cName = @"Stephen Kochan";
        NSString *cFirstName = @"Stephen";
        NSString *cLastName = @"Kochan";
        NSString *cEmail = @"steve@classroomM.com";
        NSString *cAddress = @"C/C/C";
        NSString *cState = @"NY";
        NSString *cCity = @"New York City";
        NSString *cZip = @"2222";
        NSString *cCountry = @"USA";
        NSString *cPhoneNumber = @"222222222";
         
        NSString *dName = @"Jamie Baker";
        NSString *dFirstName = @"Jamie";
        NSString *dLastName = @"Baker";
        NSString *dEmail = @"jbaker@classroomM.com";
        NSString *dAddress = @"D/D/D";
        NSString *dState = @"NY";
        NSString *dCity = @"New York City";
        NSString *dZip = @"3333";
        NSString *dCountry = @"USA";
        NSString *dPhoneNumber = @"333333333";
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        */
        
        /*
        [card1 setName: aName andFirstName: aFirstName andLastName: aLastName andEmail: aEmail andAddress: aAddress andState: aState andCity: aCity andZip: aZip andCountry: aCountry andPhoneNumber: aPhoneNumber];
        
        [card2 setName: bName andFirstName: bFirstName andLastName: bLastName andEmail: bEmail andAddress: bAddress andState: bState andCity: bCity andZip: bZip andCountry: bCountry andPhoneNumber: bPhoneNumber];
        
        [card3 setName: cName andFirstName: cFirstName andLastName: cLastName andEmail: cEmail andAddress: cAddress andState: cState andCity: cCity andZip: cZip andCountry: cCountry andPhoneNumber: cPhoneNumber];
        
        [card4 setName: dName andFirstName: dFirstName andLastName: dLastName andEmail: dEmail andAddress: dAddress andState: dState andCity: dCity andZip: dZip andCountry: dCountry andPhoneNumber: dPhoneNumber];
        
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        [myBook addCard: card4];
        
        [card1 print];
        [myBook list];
        */
        
        
        //This is E15.5 CH15
        /*
        NSString *aName = @"Julia Kochan";
        NSString *aFirstName = @"Julia";
        NSString *aLastName = @"Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *aAddress = @"A/A/A";
        NSString *aState = @"NY";
        NSString *aCity = @"New York City";
        NSNumber *aZip = [NSNumber numberWithInteger:0000];
        NSString *aCountry = @"USA";
        NSNumber *aPhoneNumber = [NSNumber numberWithInteger:000000000];
        
        NSString *bName = @"Tony Iannino";
        NSString *bFirstName = @"Tony";
        NSString *bLastName = @"Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        NSString *bAddress = @"B/B/B";
        NSString *bState = @"NY";
        NSString *bCity = @"New York City";
        NSNumber *bZip = [NSNumber numberWithInteger:1111];
        NSString *bCountry = @"USA";
        NSNumber *bPhoneNumber = [NSNumber numberWithInteger:111111111];
        
        NSString *cName = @"Stephen Kochan";
        NSString *cFirstName = @"Stephen";
        NSString *cLastName = @"Kochan";
        NSString *cEmail = @"steve@classroomM.com";
        NSString *cAddress = @"C/C/C";
        NSString *cState = @"NY";
        NSString *cCity = @"New York City";
        NSNumber *cZip = [NSNumber numberWithInteger:2222];
        NSString *cCountry = @"USA";
        NSNumber *cPhoneNumber = [NSNumber numberWithInteger:222222222];
        
        NSString *dName = @"Jamie Baker";
        NSString *dFirstName = @"Jamie";
        NSString *dLastName = @"Baker";
        NSString *dEmail = @"jbaker@classroomM.com";
        NSString *dAddress = @"D/D/D";
        NSString *dState = @"NY";
        NSString *dCity = @"New York City";
        NSNumber *dZip = [NSNumber numberWithInteger:3333];
        NSString *dCountry = @"USA";
        NSNumber *dPhoneNumber = [NSNumber numberWithInteger:333333333];
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        
        NSMutableDictionary *dict1 =
        [NSMutableDictionary dictionaryWithObjectsAndKeys:
         aName,
         @"name",
         aFirstName,
         @"firstName",
         aLastName,
         @"lastName",
         aEmail,
         @"email",
         aAddress,
         @"address",
         aState,
         @"state",
         aCity,
         @"city",
         aZip,
         @"zip",
         aCountry,
         @"country",
         aPhoneNumber,
         @"phoneNumber",
         nil];
        
        NSMutableDictionary *dict2 =
        [NSMutableDictionary dictionaryWithObjectsAndKeys:
         bName,
         @"name",
         bFirstName,
         @"firstName",
         bLastName,
         @"lastName",
         bEmail,
         @"email",
         bAddress,
         @"address",
         bState,
         @"state",
         bCity,
         @"city",
         bZip,
         @"zip",
         bCountry,
         @"country",
         bPhoneNumber,
         @"phoneNumber",
         nil];

        NSMutableDictionary *dict3 =
        [NSMutableDictionary dictionaryWithObjectsAndKeys:
         cName,
         @"name",
         cFirstName,
         @"firstName",
         cLastName,
         @"lastName",
         cEmail,
         @"email",
         cAddress,
         @"address",
         cState,
         @"state",
         cCity,
         @"city",
         cZip,
         @"zip",
         cCountry,
         @"country",
         cPhoneNumber,
         @"phoneNumber",
         nil];
        
        NSMutableDictionary *dict4 =
        [NSMutableDictionary dictionaryWithObjectsAndKeys:
         dName,
         @"name",
         dFirstName,
         @"firstName",
         dLastName,
         @"lastName",
         dEmail,
         @"email",
         dAddress,
         @"address",
         dState,
         @"state",
         dCity,
         @"city",
         dZip,
         @"zip",
         dCountry,
         @"country",
         dPhoneNumber,
         @"phoneNumber",
         nil];
        
        //Set up a new address book
        AddressBook *myBook = [[AddressBook alloc]
                               initWithName: @"Linda's Address Book"];
        
       //Now set up four address cards
        
        [card1 setMyDictionary:dict1];
        [card2 setMyDictionary:dict2];
        [card3 setMyDictionary:dict3];
        [card4 setMyDictionary:dict4];
        
        
        //Add some cards to the address book
        
        [myBook addCard:card1];
        [myBook addCard:card2];
        [myBook addCard:card3];
        [myBook addCard:card4];
        
        
        //NSArray *matches = [[NSArray alloc] initWithArray: [myBook lookupAll: @"Stephen"]];
        
        //Look up all mathches
        NSLog(@"Lookup: Stephen");
        
        NSString *query = @"Stephen";
        NSArray *myArray = [myBook lookupAll:query];
        
        if (myArray != nil)
        {
            NSLog(@"Results:");
            for (AddressCard *theCard in myArray)
            {
                [theCard print];
            }
        }
        else
        {
            NSLog(@"Not found");
        }
        */
        
        
        //This is E15.6 CH15
        /*
        NSLog(@"Remove: Stephen");
        if ([myBook removeName: @"Stephen"])
            NSLog(@"Remove sucessful");
        else
            NSLog(@"Remove unsucessful");
        
        //Look up Stephen
        NSLog(@"Lookup: Stephen");
        
        NSString *otherQuery = @"Stephen";
        NSArray *otherMyArray = [myBook lookupAll:otherQuery];
        
        if (otherMyArray != nil)
        {
            NSLog(@"Results:");
            for (AddressCard *theCard in myArray)
            {
                [theCard print];
            }
        }
        else
        {
            NSLog(@"Not found");
        }
        */
        
        //This is E15.7 CH15
        /*
        NSMutableArray *myFractions = [[NSMutableArray alloc] init];
        Fraction *frac1 = [[Fraction alloc] init];
        Fraction *frac2 = [[Fraction alloc] init];
        Fraction *frac3 = [[Fraction alloc] init];
        Fraction *frac4 = [[Fraction alloc] init];

        [frac1 setTo:1 over:1];
        [frac2 setTo:1 over:2];
        [frac3 setTo:1 over:3];
        [frac4 setTo:1 over:4];

        [myFractions addObject:frac1];
        [myFractions addObject:frac2];
        [myFractions addObject:frac3];
        [myFractions addObject:frac4];
        
        //Setting up a regular for loop
        for (int i = 0; i < [myFractions count]; ++i)
        {
            NSLog(@"%@", [myFractions[i] description]);
        }
        
        //With fast enumeration
        for (Fraction *element in myFractions)
        {
            NSLog(@"%i/%i", element.numerator, element.denominator);
        }
        
        //With just using %@
        NSLog(@"%@", myFractions);
        */
        
        //This is E15.8 CH15
        NSMutableArray *myFractions = [[NSMutableArray alloc] init];
        Fraction *frac1 = [[Fraction alloc] init];
        Fraction *frac2 = [[Fraction alloc] init];
        Fraction *frac3 = [[Fraction alloc] init];
        Fraction *frac4 = [[Fraction alloc] init];
        
        [frac1 setTo:2 over:1];
        [frac2 setTo:1 over:2];
        [frac3 setTo:3 over:1];
        [frac4 setTo:1 over:3];
        
        [myFractions addObject:frac1];
        [myFractions addObject:frac2];
        [myFractions addObject:frac3];
        [myFractions addObject:frac4];
        
        NSLog(@"The unsorted array:");
        NSLog(@"%@",[myFractions description]);
        
        [myFractions sortUsingSelector:@selector(comparisonFraction:)];
        
        NSLog(@"The sorted array:");
        NSLog(@"%@", [myFractions description]);
        
        
        //This is E15.9 CH15
        
        NSString *aTitle = @"Title1";
        NSString *aArtist = @"Artist1";
        NSString *aAlbum = @"Album1";
        NSString *aPlayingTime = @"0:00";
        
        NSString *bTitle = @"Title2";
        NSString *bArtist = @"Artist2";
        NSString *bAlbum = @"Album2";
        NSString *bPlayingTime = @"1:11";
        
        NSString *cTitle = @"Title3";
        NSString *cArtist = @"Artist3";
        NSString *cAlbum = @"Album3";
        NSString *cPlayingTime = @"2:22";
        
        NSString *dTitle = @"Title4";
        NSString *dArtist = @"Artist4";
        NSString *dAlbum = @"Album4";
        NSString *dPlayingTime = @"3:33";
        
        NSString *eTitle = @"Title5";
        NSString *eArtist = @"Artist5";
        NSString *eAlbum = @"Album5";
        NSString *ePlayingTime = @"4:44";
        
        Song *song1 = [[Song alloc] init];
        Song *song2 = [[Song alloc] init];
        Song *song3 = [[Song alloc] init];
        Song *song4 = [[Song alloc] init];
        Song *song5 = [[Song alloc] init];
        
        //Now we add the songs technical details to the song card
        
        [song1 setTitle: aTitle andArtist: aArtist andAlbum: aAlbum andPlayingTime: aPlayingTime];
        [song2 setTitle: bTitle andArtist: bArtist andAlbum: bAlbum andPlayingTime: bPlayingTime];
        [song3 setTitle: cTitle andArtist: cArtist andAlbum: cAlbum andPlayingTime: cPlayingTime];
        [song4 setTitle: dTitle andArtist: dArtist andAlbum: dAlbum andPlayingTime: dPlayingTime];
        [song5 setTitle: eTitle andArtist: eArtist andAlbum: eAlbum andPlayingTime: ePlayingTime];
        
        
        //Now we set up a new collection of songs
        
        Playlist *playlist1 = [[Playlist alloc] initWithName: @"Playlist 1"];
        Playlist *playlist2 = [[Playlist alloc] initWithName: @"Playlist 2"];
        
        
        //Now we set up a new collection of playlists and also in the method it sets up the special master playlist
        
        MusicCollection *myMusic = [[MusicCollection alloc] initWithName: @"My Music"];
        
        
        //Now we add the songs to the collections of songs
        
        [myMusic addSong: song1 toPlaylist:playlist1];
        [myMusic addSong: song2 toPlaylist:playlist1];
        [myMusic addSong: song3 toPlaylist:playlist2];
        
        
        //Now we add playlists to the collection of playlists
        [myMusic addPlaylist: playlist1];
        [myMusic addPlaylist: playlist2];
        
        
        //Now we print the songs technical details
        
        NSLog(@"Print the song techical details:");
        [song1 print];
        [song2 print];
        [song3 print];
        [song4 print];
        [song5 print];
        
        
        //Now we print the collections of songs
        
        NSLog(@"Print the collections of songs:");
        [playlist1 list];
        [playlist2 list];
        
        
        //Now we add more songs to the collection of songs, we print all the collections of songs and after we print the whole library
        NSLog(@"Add songs to the collections of songs:");
        [myMusic addSong: song4 toPlaylist:playlist1];
        [myMusic addSong: song5 toPlaylist:playlist2];
        [playlist1 list];
        [playlist2 list];
        [myMusic.library list];
        
        
        //Now we remove a song from a collection of songs, we print all the collections of songs and after we print the whole library
        NSLog(@"Remove songs to the collections of songs:");
        [myMusic removeSong: song5 fromPlalist: playlist2];
        [playlist1 list];
        [playlist2 list];
        [myMusic.library list];
        
        
        //Now we reset to the default configuration, we print all the collections of songs and after we print the whole library
        NSLog(@"Reset to the default configuration:");
        [myMusic addSong: song5 toPlaylist: playlist2];
        [playlist1 list];
        [playlist2 list];
        [myMusic.library list];


        //Now we remove a song from the library, which will remove it from all the collections of songs, we print the collections of songs and after we print the whole library
        NSLog(@"Remove a song from the library:");
        [myMusic removeSong: song4 fromPlalist: myMusic.library];
        [playlist1 list];
        [playlist2 list];
        [myMusic.library list];

        
        //Now we lookup some songs
        
        NSLog(@"Lookup:");
        [myMusic lookup: @"title1"];
        [myMusic lookup: @"artist2"];
        [myMusic lookup: @"album3"];
        
        
        //Now we print the collections of playlists
        NSLog(@"Print the collections of playlists:");
        [myMusic list];
        
        
        //Now we remove a collcetion of songs from the collection of playlists and after we print the collections of playlists
        NSLog(@"Remove a collection of songs from the collection of playlists:");
        [myMusic removePlaylist: playlist2];
        [myMusic list];
        
        
        //Now we reset to the default configuration and we print the he collections of playlists
        NSLog(@"Reset to the default configuration:");
        [myMusic addPlaylist: playlist2];
        [myMusic list];
        
        
        //This is E15.10 CH15
        
        NSNumber *randomNumbers;
        NSArray *randomNumbersArray;
        NSMutableArray *randomNumbersMutableArray = [NSMutableArray array];
        
        
        //Now we store our randomly generated integer NSNumber objects in an array with a for loop
        for (int i = 0; i <= 100; i++)
        {
            int randomInteger = (arc4random() % ((signed)10 + 1));
            randomNumbers = [NSNumber numberWithInt: randomInteger];
            [randomNumbersMutableArray addObject: randomNumbers];
        }
        
        //Now we initialize a normal array with the mutable array we created and filled with numbers before
        randomNumbersArray = [[NSArray alloc] initWithArray:randomNumbersMutableArray];
        
        //Now we create an NSCountedSet from  the array
        NSCountedSet *myfrequencyCounts = [[NSCountedSet alloc] initWithArray: randomNumbersArray];
        
        //Now we print the frequency chart
        NSString *numberString = @"Number";
        NSString *frequencyString = @"Frequency";
        
        NSLog(@"%-10@ %-10@", numberString, frequencyString);
        for (NSNumber *theNumber in myfrequencyCounts)
            NSLog(@"%2li %3li", [theNumber integerValue], [myfrequencyCounts countForObject: theNumber]);
        
        
        //This is E15.11 CH15
        NSString *aName = @"Julia Kochan";
        NSString *aFirstName = @"Julia";
        NSString *aLastName = @"Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *aAddress = @"A/A/A";
        NSString *aState = @"NY";
        NSString *aCity = @"New York City";
        NSNumber *aZip = [NSNumber numberWithInt:0000];
        NSString *aCountry = @"USA";
        NSNumber *aPhoneNumber = [NSNumber numberWithInt:000000000];
        
        NSString *bName = @"Tony Iannino";
        NSString *bFirstName = @"Tony";
        NSString *bLastName = @"Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        NSString *bAddress = @"B/B/B";
        NSString *bState = @"NY";
        NSString *bCity = @"New York City";
        NSNumber *bZip = [NSNumber numberWithInt:1111];
        NSString *bCountry = @"USA";
        NSNumber *bPhoneNumber = [NSNumber numberWithInt:111111111];
        
        NSString *cName = @"Stephen Kochan";
        NSString *cFirstName = @"Stephen";
        NSString *cLastName = @"Kochan";
        NSString *cEmail = @"steve@classroomM.com";
        NSString *cAddress = @"C/C/C";
        NSString *cState = @"NY";
        NSString *cCity = @"New York City";
        NSNumber *cZip = [NSNumber numberWithInt:2222];
        NSString *cCountry = @"USA";
        NSNumber *cPhoneNumber = [NSNumber numberWithInt:222222222];
        
        NSString *dName = @"Jamie Baker";
        NSString *dFirstName = @"Jamie";
        NSString *dLastName = @"Baker";
        NSString *dEmail = @"jbaker@classroomM.com";
        NSString *dAddress = @"D/D/D";
        NSString *dState = @"NY";
        NSString *dCity = @"New York City";
        NSNumber *dZip = [NSNumber numberWithInt:3333];
        NSString *dCountry = @"USA";
        NSNumber *dPhoneNumber = [NSNumber numberWithInt:333333333];
        
        NSString *eName = @"Eeeee Eeeee";
        NSString *eFirstName = @"Eeeee";
        NSString *eLastName = @"Eeeee";
        NSString *eEmail = @"eeeeee@classroomM.com";
        NSString *eAddress = @"E/E/E";
        NSString *eState = @"NY";
        NSString *eCity = @"New York City";
        NSNumber *eZip = [NSNumber numberWithInt:4444];
        NSString *eCountry = @"USA";
        NSNumber *ePhoneNumber = [NSNumber numberWithInt:444444444];
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        AddressCard *card5 = [[AddressCard alloc] init];
        
         [card1 setName: aName andFirstName: aFirstName andLastName: aLastName andEmail: aEmail andAddress: aAddress andState: aState andCity: aCity andZip: aZip andCountry: aCountry andPhoneNumber: aPhoneNumber];
         
         [card2 setName: bName andFirstName: bFirstName andLastName: bLastName andEmail: bEmail andAddress: bAddress andState: bState andCity: bCity andZip: bZip andCountry: bCountry andPhoneNumber: bPhoneNumber];
         
         [card3 setName: cName andFirstName: cFirstName andLastName: cLastName andEmail: cEmail andAddress: cAddress andState: cState andCity: cCity andZip: cZip andCountry: cCountry andPhoneNumber: cPhoneNumber];
         
         [card4 setName: dName andFirstName: dFirstName andLastName: dLastName andEmail: dEmail andAddress: dAddress andState: dState andCity: dCity andZip: dZip andCountry: dCountry andPhoneNumber: dPhoneNumber];
        
         [card5 setName: eName andFirstName: eFirstName andLastName: eLastName andEmail: eEmail andAddress: eAddress andState: eState andCity: eCity andZip: eZip andCountry: eCountry andPhoneNumber: ePhoneNumber];
        
        AddressBook *myBook = [[AddressBook alloc]
                               initWithName: @"Linda's Address Book"];
         
         [myBook addCard: card1];
         [myBook addCard: card2];
         [myBook addCard: card3];
         [myBook addCard: card4];
         [myBook addCard: card5];
        
        //Now list our cards to see the orignial details
        [myBook list];
        
        //Now we set a new Name to our card5 to see if it changes
        [card5 setName:@"Fffff Fffff"];
        
        //Now we list our cards again to see if the changes made previously affected card5
        [myBook list];
        
        //Now we set a name of our card5, but we change it inside myBook
        [[myBook.book objectAtIndex:4] setName:@"Fffff Fffff"];
        
        //Now we list our cards again to see if the changes made previously affected card5
        [myBook list];
        

    }
    return 0;
}
