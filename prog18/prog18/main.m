//
//  main.m
//  prog18
//
//  Created by SUREN HARUTYUNYAN on 8/6/17.
//  Copyright © 2017 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "AddressCard.h"
#import "AddressBook.h"
#import "XYPoint.h"
#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //This is P18.1 CH18
        /*
        NSMutableArray *dataArray = [NSMutableArray arrayWithObjects:@"one", @"two", @"three", @"four", nil];
        NSMutableArray *dataArray2;
        
        //Simple assignment
        
        dataArray2 = dataArray;
        [dataArray2 removeObjectAtIndex:0];
        
        
        NSLog(@"dataArray: ");
        for (NSString *elem in dataArray)
            NSLog(@" %@", elem);
        
        NSLog(@"dataArray2: ");
        for (NSString *elem in dataArray2)
            NSLog(@" %@", elem);
        
        
        //Try a copy, then remove the first element from the copy
        
        dataArray2 = [dataArray mutableCopy];
        [dataArray2 removeObjectAtIndex:0];
        
        NSLog(@"dataArray: ");
        for (NSString *elem in dataArray)
            NSLog(@" %@", elem);
        
        NSLog(@"dataArray2: ");
        for (NSString *elem in dataArray2)
            NSLog(@" %@", elem);
        */

        
        //This is P18.2 CH18
        
        NSMutableArray *dataArray = [NSMutableArray arrayWithObjects:
                                    [NSMutableString stringWithString:@"one"],
                                    [NSMutableString stringWithString:@"two"],
                                    [NSMutableString stringWithString:@"three"],
                                    nil
                                     ];
        
        NSMutableArray *dataArray2;
        NSMutableString *mStr;
        
        NSLog(@"dataArray: ");
        for (NSString *elem in dataArray)
            NSLog(@" %@", elem);
        
        //Make a copy, then change one of the strings
        
        dataArray2 = [dataArray mutableCopy];
        
        mStr = dataArray[0];
        [mStr appendString:@"ONE"];
        
        
        NSLog(@"dataArray: ");
        for (NSString *elem in dataArray)
            NSLog(@" %@", elem);
        
        NSLog(@"dataArray2: ");
        for (NSString *elem in dataArray2)
            NSLog(@" %@", elem);
        
        
        //This is P18.3 CH18
        
        Fraction *f1 = [[Fraction alloc] init];
        Fraction *f2;
        
        [f1 setTo: 2 over: 5];
        f2 = [f1 copy];
        
        //This one is an example without the copy method
        //f2 = f1;
        
        [f2 setTo: 1 over: 3];
        
        [f1 print];
        [f2 print];
        
        
        //This is E18.1 CH18
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
 
        AddressCard *card1 = [[AddressCard alloc] init];

        [card1 setName: aName andFirstName: aFirstName andLastName: aLastName andEmail: aEmail andAddress: aAddress andState: aState andCity: aCity andZip: aZip andCountry: aCountry andPhoneNumber: aPhoneNumber];

        AddressBook *myBook = [[AddressBook alloc]
                               initWithName: @"Linda's Address Book"];
        
        AddressBook *myNewBook;
    
        [myBook addCard:card1];
        [myBook list];
        
        myNewBook = [myBook copy];
        
        [myNewBook setBookName:@"New Name"];
        [myBook list];
        
        //So, it would make sense to also implement a mutableCopy method.
        
        //If someone uses the setter method for the book property in the AddressBook class, only the referencew would change, bacause the book property doesn't have the copy atribute. So the AddressBook is no longer the owner. This can be fixed by adding the copy property.
        
        
        //This is E18.2 CH18
        
        Rectangle *myRect = [[Rectangle alloc] init];
        Rectangle *myNewRect;
        XYPoint *myPoint = [[XYPoint alloc] init];
        
        [myPoint setX:0 andY:0];
        [myRect setWidth:2 andHeight:3];
        
        NSLog(@"1st: %i", [myRect area]);
        [myRect setOrigin:[myPoint copy]];
        [[myRect origin] print];
        
        myNewRect = [myRect copy];
        NSLog(@"2nd: %i", [myNewRect area]);
        [[myNewRect origin] print];
        
        NSLog(@"Here we will change the origin");
        NSLog(@"1st: %i", [myRect area]);
        
        [myPoint setX:1 andY:1];
        [myRect setOrigin:[myPoint copy]];
        
        [myPoint setX:4 andY:5];
        [[myRect origin] print];
        
        NSLog(@"2nd: %i", [myNewRect area]);
        [[myNewRect origin] print];
        
        //So here is does not make sense to implement both mutable and immutable copies for these classes, because, height and width, and, x and y, are not objects.
    
        
        //This is E18.3 CH18
        
        NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:@"1st", @"First", @"2nd", @"Second", @"3rd", @"Third", nil];
        NSDictionary *dictCopy;
        NSMutableDictionary *dictMutableCopy;
        
        dictCopy = [dict copy];
        
        dictMutableCopy = [[NSMutableDictionary alloc] init];
        [dictMutableCopy addEntriesFromDictionary:dict];
        
        NSLog(@"Original dictionary:\n%@", [dict allValues]);
        NSLog(@"Copy dictionary:\n%@", [dictCopy allValues]);
        NSLog(@"Mutable Copy dictionary:\n%@", [dictMutableCopy allValues]);
        
        
        NSLog(@"Remove @\"First\"");
        [dictMutableCopy removeObjectForKey:@"First"];
        
        NSLog(@"Original dictionary:\n%@", [dict allValues]);
        NSLog(@"Copy dictionary:\n%@", [dictCopy allValues]);
        NSLog(@"Mutable Copy dictionary:\n%@", [dictMutableCopy allValues]);

        
        NSLog(@"Here we delete and wipe the dictionary");
        dict = [NSDictionary new];

        NSLog(@"Original dictionary:\n%@", [dict allValues]);
        NSLog(@"Copy dictionary:\n%@", [dictCopy allValues]);
        NSLog(@"Mutable Copy dictionary:\n%@", [dictMutableCopy allValues]);
        

        //Here the copies ara shallow in all cases. The key/object pairs in all three dictionaries reference the same key/object pairs.
        
        //We have to remember that for either an immutable or mutable dictionary, if any object is a key/object pair is mutable, its contents can be changed. On the other hand, only mutable dicitonaries can have key/object pairs added or removed from the dictionary.
        
        
    }
    return 0;
}
