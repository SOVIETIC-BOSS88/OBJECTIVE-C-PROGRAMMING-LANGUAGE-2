//
//  main.m
//  prog19
//
//  Created by SUREN HARUTYUNYAN on 10/6/17.
//  Copyright © 2017 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"
#import "AddressBook.h"

//Definition for our Foo class
#import "Foo.h" 

int main(int argc, const char * argv[]) {
    
    //This is P19.7 CH19
    //AddressBook *myBook;
    
    @autoreleasepool {
        
        //This is P19.1 CH19
        /*
        NSDictionary *glossary = @{
                                   @"abstract class":
                                       @"A class defined so other classes can inherit from it.",
                                   @"adopt":
                                       @"To implement all the methods defined in a protocol.",
                                   @"archiving":
                                       @"Storing an object fro later use."
                                   };
        
        if ([glossary writeToFile:@"glossary" atomically: YES] == NO)
            NSLog(@"Save to file failed");
         */
        
        //This is P19.2 CH19
        //NSDictionary *glossary;
        /*
        glossary = [NSDictionary dictionaryWithContentsOfFile: @"glossary"];
        
        for (NSString *key in glossary)
            NSLog(@"%@: %@", key, glossary[key]);
        */
        
        //This is P19.3 CH19
        
        /*
        NSDictionary *glossary = @{
                                   @"abstract class":
                                       @"A class defined so other classes can inherit from it.",
                                   @"adopt":
                                       @"To implement all the methods defined in a protocol.",
                                   @"archiving":
                                       @"Storing an object fro later use."
                                   };
        */
        
        //[NSKeyedArchiver archiveRootObject: glossary toFile:@"glossary.archive"];
        
        
        //This is P19.4 CH19
        /*
        //NSDictionary *glossary;
        
        glossary = [NSKeyedUnarchiver unarchiveObjectWithFile: @"glossary.archive"];
        
        for (NSString *key in glossary)
            NSLog(@"%@: %@", key, glossary[key]);
        */
        
        //This is P19.5 CH19
        //P19.5 CH19 is in the @interface and @implementation files, not in the main file.
        
    
        //This is P19.6 CH19
        /*
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        
        NSString *cName = @"Stephen Kochan";
        NSString *cEmail = @"steve@classroomM.com";
        
        NSString *dName = @"Jamie Baker";
        NSString *dEmail = @"jbaker@classroomM.com";
        
       
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        
        
        //Set up a new address book
        AddressBook *myBook = [AddressBook alloc];
         
        
        //First set up four address cards
        [card1 setName: aName andEmail: aEmail];
        [card2 setName: bName andEmail: bEmail];
        [card3 setName: cName andEmail: cEmail];
        [card4 setName: dName andEmail: dEmail];
         
        myBook = [myBook initWithName:@"Steve's Address Book"];
        
        //Add some cards to the address book
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        [myBook addCard: card4];
        
        [myBook sort];
        
        if ([NSKeyedArchiver archiveRootObject: myBook toFile:@"addrbook.arch"] == NO)
            NSLog(@"archiving failed");
        */
        
        //This is P19.7 CH19
        //myBook = [NSKeyedUnarchiver unarchiveObjectWithFile: @"addrbook.arch"];
    
        //[myBook list];
        
        
        //This is P19.8 CH19
        /*
        Foo *myFoo1 = [[Foo alloc] init];
        Foo *myFoo2;
        
        myFoo1.strVal = @"This is the string";
        myFoo1.intVal = 12345;
        myFoo1.floatVal = 98.6;
        
        [NSKeyedArchiver archiveRootObject: myFoo1 toFile: @"foo.arch"];
        
        myFoo2 = [NSKeyedUnarchiver unarchiveObjectWithFile: @"foo.arch"];
        NSLog(@"%@\n%i\n%g", myFoo2.strVal, myFoo2.intVal, myFoo2.floatVal);
        */
        
        
        //This is P19.9 CH19
        /*
        Foo *myFoo1 = [[Foo alloc] init];
        NSMutableData *dataArea;
        NSKeyedArchiver *archiver;
        //AddressBook *myBook;
        
        //Insert code from Program 19.7 to create an Address Book
        //in myBook containing four address cards
        
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        
        NSString *cName = @"Stephen Kochan";
        NSString *cEmail = @"steve@classroomM.com";
        
        NSString *dName = @"Jamie Baker";
        NSString *dEmail = @"jbaker@classroomM.com";
        
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        
        
        //Set up a new address book
        AddressBook *myBook = [AddressBook alloc];
        
        
        //First set up four address cards
        [card1 setName: aName andEmail: aEmail];
        [card2 setName: bName andEmail: bEmail];
        [card3 setName: cName andEmail: cEmail];
        [card4 setName: dName andEmail: dEmail];
        
        myBook = [myBook initWithName:@"Steve's Address Book"];
        
        //Add some cards to the address book
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        [myBook addCard: card4];
        
        myFoo1.strVal = @"This is the string";
        myFoo1.intVal = 12345;
        myFoo1.floatVal = 98.6;
        
        //Set up a data area and connect it to an NSKeyedArchiver object
        dataArea = [NSMutableData data];
        
        archiver = [[NSKeyedArchiver alloc]
                    initForWritingWithMutableData: dataArea];
    
        //Now we can begin to archive
        [archiver encodeObject: myBook forKey:@"/Users/SURENHARUTYUNYAN/Library/Developer/Xcode/DerivedData/prog19-ghsmokiwldgmhnalrgjdtwttqgit/Build/Products/Debug/myaddrbook"];
        [archiver encodeObject: myFoo1 forKey:@"/Users/SURENHARUTYUNYAN/Library/Developer/Xcode/DerivedData/prog19-ghsmokiwldgmhnalrgjdtwttqgit/Build/Products/Debug/myfoo1"];
        [archiver finishEncoding];
        
        
        //Write the archived data area to a file
        if ([dataArea writeToFile: @"/Users/SURENHARUTYUNYAN/Library/Developer/Xcode/DerivedData/prog19-ghsmokiwldgmhnalrgjdtwttqgit/Build/Products/Debug/myArchive" atomically: YES] == NO)
            NSLog(@"Archiving failed!");
        */
        
        //This is P19.10 CH19
        /*
        //NSData *dataArea;
        NSKeyedUnarchiver *unarchiver;
        //Foo *myFoo1;
        //AddressBook *myBook;
        
        //Read in the archive and connect an
        //NSKeyedUnarchiver object to it
        
        //This is a fix, because there is a confusion otherwise with NSData and NSMutableData
        //dataArea = [NSData dataWithContentsOfFile: @"myArchive"];
        dataArea = [NSMutableData dataWithContentsOfFile: @"/Users/SURENHARUTYUNYAN/Library/Developer/Xcode/DerivedData/prog19-ghsmokiwldgmhnalrgjdtwttqgit/Build/Products/Debug/myArchive"];
        
        if (! dataArea)
        {
            NSLog(@"Can't read back archive file!");
            return 1;
        }
        
        unarchiver = [[NSKeyedUnarchiver alloc]
                      initForReadingWithData: dataArea];
        
        //Decode the objects we previously stored in the archive
        myBook = [unarchiver decodeObjectForKey:@"/Users/SURENHARUTYUNYAN/Library/Developer/Xcode/DerivedData/prog19-ghsmokiwldgmhnalrgjdtwttqgit/Build/Products/Debug/myaddrbook"];
        myFoo1 = [unarchiver decodeObjectForKey:@"/Users/SURENHARUTYUNYAN/Library/Developer/Xcode/DerivedData/prog19-ghsmokiwldgmhnalrgjdtwttqgit/Build/Products/Debug/myfoo1"];
        [unarchiver finishDecoding];
        
        //Verify that the restore was successful
        [myBook list];
        NSLog(@"%@\n%i\n%g", myFoo1.strVal, myFoo1.intVal, myFoo1.floatVal);
        */
        
        //This is P19.11 CH19
        /*
        NSData *data;
        NSMutableArray *dataArray = [NSMutableArray arrayWithObjects:
                                     [NSMutableString stringWithString: @"one"],
                                     [NSMutableString stringWithString: @"two"],
                                     [NSMutableString stringWithString: @"three"],
                                     nil
                                     ];
        
        NSMutableArray *dataArray2;
        NSMutableString *mstr;
        
        //Make a deep copy using the archiver
        
        data = [NSKeyedArchiver archivedDataWithRootObject: dataArray];
        dataArray2 = [NSKeyedUnarchiver unarchiveObjectWithData: data];
        
        mstr = dataArray2[0];
        [mstr appendString: @"ONE"];
        
        NSLog(@"dataArray:");
        for (NSString *elem in dataArray)
            NSLog(@"%@", elem);
        
        NSLog(@"\ndataArray2:");
        for (NSString *elem in dataArray2)
            NSLog(@"%@", elem);
        */
        
        //This is E19.1 CH19
        /*
        //This is P6.10.A CH6, with the BOOL
        NSMutableArray *primeArray = [[NSMutableArray alloc] init];
        NSMutableData *dataArea = [NSMutableData data];
        NSKeyedArchiver *archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:dataArea];
       
        NSFileManager *fm = [NSFileManager defaultManager];
        NSString *path = [fm currentDirectoryPath];
        
        int p, d;
        BOOL isPrime;
        
        for ( p = 2; p <= 50; ++p)
        {
            isPrime = YES;
            
            for ( d = 2; d < p; ++d )
                if ( p % d == 0)
                    isPrime = NO;
            
            if ( isPrime == YES )
                NSLog(@"%i", p);
                [primeArray addObject:[NSNumber numberWithLong:(long) p]];
        }
        
        [archiver encodeObject: primeArray forKey:@"primes"];
        [archiver finishEncoding];
        
        if([dataArea writeToFile:@"primes.pl" atomically: YES] == NO)
        {
            NSLog(@"Could not produce the primes.pl");
            return 1;
        }

        NSLog(@"%@/primes.pl has been created.", path);
        */
    
        //This is E19.2 CH19
        /*
        NSKeyedUnarchiver *unArchiver;
        
        dataArea = [NSMutableData dataWithContentsOfFile:@"primes.pl"];
        unArchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:dataArea];
        
        primeArray = [unArchiver decodeObjectForKey:@"primes"];
        
        for (int i = 0; i < [primeArray count]; ++i)
        {
            NSLog(@"%li", [[primeArray objectAtIndex:(NSUInteger) i] longValue]);
        }
        
        
        //This is E19.3 CH19
        NSDictionary *glossary = [NSDictionary dictionaryWithContentsOfFile:@"/Library/Preferences/com.apple.Bluetooth.plist"];
        
        for (NSString *key in glossary)
            NSLog(@"%@: %@", key, glossary[key]);
        */
        
        //This is E19.4 CH19
        
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args= [proc arguments];
        NSArray *mySearch;
        AddressCard *myCard;
        
        
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        
        NSString *cName = @"Stephen Kochan";
        NSString *cEmail = @"steve@classroomM.com";
        
        NSString *dName = @"Jamie Baker";
        NSString *dEmail = @"jbaker@classroomM.com";
        
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        
        //Set up a new address book
        AddressBook *myBook = [AddressBook alloc];
        
        
        //First set up four address cards
        [card1 setName: aName andEmail: aEmail];
        [card2 setName: bName andEmail: bEmail];
        [card3 setName: cName andEmail: cEmail];
        [card4 setName: dName andEmail: dEmail];
        
        myBook = [myBook initWithName:@"Steve's Address Book"];
        
        //Add some cards to the address book
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        [myBook addCard: card4];
        
        [myBook sort];
        
        if ([NSKeyedArchiver archiveRootObject: myBook toFile:@"/Users/SURENHARUTYUNYAN/Library/Developer/Xcode/DerivedData/prog19-ghsmokiwldgmhnalrgjdtwttqgit/Build/Products/Debug/addrbook.arch"] == NO)
            NSLog(@"archiving failed");
        
        myBook = [NSKeyedUnarchiver unarchiveObjectWithFile: @"/Users/SURENHARUTYUNYAN/Library/Developer/Xcode/DerivedData/prog19-ghsmokiwldgmhnalrgjdtwttqgit/Build/Products/Debug/addrbook.arch"];
        
        [myBook list];
        
        if ([args count] != 2)
        {
            NSLog(@"Usage: Name searched %@", [proc processName]);
            return 1;
        }
        
        NSLog(@"We look up: %@", [args objectAtIndex: 1]);
        mySearch = [myBook lookupAll: [args objectAtIndex: 1]];
        NSLog(@"Entries that match the search: %lu", mySearch.count);
        
        if ([mySearch count])
        {
            for (myCard in mySearch)
                [myCard print];
        }
        else
            NSLog(@"Nothing found");
        
    }
    return 0;
}
