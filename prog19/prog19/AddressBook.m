//
//  AddressBook.m
//  prog19
//
//  Created by SUREN HARUTYUNYAN on 11/6/17.
//  Copyright © 2017 ClassroomM. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook

//This is P15.12 CH15
@synthesize bookName, book;

//Set up the AddressBook's name and an empty book

-(instancetype) initWithName: (NSString *) name
{
    self = [super init];
    
    if (self)
    {
        bookName = [NSString stringWithString: name];
        book = [NSMutableArray array];
    }
    return self;
}


-(instancetype) init
{
    return [self initWithName: @"NoName"];
}


 -(void) addCard: (AddressCard *) theCard
 {
 [book addObject: theCard];
 }
 

-(NSUInteger) entries
{
    return [book count];
}


 -(void) list
 {
 NSLog(@"======== Contents of: %@ ========", bookName);
 
 for (AddressCard *theCard in book)
 NSLog(@"%-20s  %-32s",
 [theCard.name UTF8String], [theCard.email UTF8String]);
 
 NSLog(@"=================================================");
 }
 

//This is E15.4 CH15
/*
-(void) list
{
    NSLog(@"==================================== Contents of: %@ =====================================", bookName);
    
    for (AddressCard *theCard in book)
        NSLog(@"%-15s %-8s %-8s %-30s %-5s %-3s %-3s %-4i %-4s %-5i",
              [theCard.name UTF8String],
              [theCard.firstName UTF8String],
              [theCard.lastName UTF8String],
              [theCard.email UTF8String],
              [theCard.address UTF8String],
              [theCard.state UTF8String],
              [theCard.city UTF8String],
              [theCard.zip intValue],
              [theCard.country UTF8String],
              [theCard.phoneNumber intValue]);
    
    NSLog(@"============================================================================================================");
}
*/

//This is P15.13 CH15
/*
 //Lookup address card by name - - assumes an exact match
 
 -(AddressCard *) lookup: (NSString *) theName
 {
 for (AddressCard *nextCard in book)
 if ([nextCard.name caseInsensitiveCompare: theName] == NSOrderedSame)
 return nextCard;
 
 return nil;
 
 //For more information on this part, i.e., why you can't put an else statement before the return "nil", go and check the http://stackoverflow.com/questions/22410538/error-control-may-reach-end-of-non-void-function-in-c.
 
 //The last example says that if we put it like this it will, "Now, function checks entire values array and then returns false if there was no matches. But if it found a match, it will instantly return true witout checking other elements. Also, compiler will not emit a warning for this code."
 }
 */

//This is P15.14 CH15

-(void) removeCard: (AddressCard *) theCard
{
    [book removeObjectIdenticalTo: theCard];
}

//This is P15.15 CH15

//Here we have some versions of the "sort" method

/*
 -(void) sort
 {
 [book sortUsingSelector: @selector (compareNames:)];
 }
 */

/*
 
 -(void) sort
 {
 [book sortUsingComparator:
 ^(id obj1, id obj2)
 {
 return [obj1 compareNames: obj2];
 }
 ];
 }
 */

-(void) sort
{
    [
     book sortUsingComparator:^(id obj1, id obj2)
     {
         return [[obj1 name] compare: [obj2 name]];
     }
     ];
}

//This is E15.2 CH15
/*
 -(AddressCard *) lookup: (NSString *) theName
 {
 for (AddressCard *nextCard in book)
 if ([nextCard.name rangeOfString: theName options: NSCaseInsensitiveSearch].location != NSNotFound)
 return nextCard;
 return nil;
 
 //You can think about the code this way. The compiler doesn't care if you put an else statement, as long as you put the return "nil" statement. This is because it thinks that if something wrong happens during the for loop, that will make the for loop to not to execute, so the return statements of the if and the else will never be reached. This is because if we put the else statement, it will be attched to the if statement, so if the for statement is not executed, the if statement wont' be neither, so it will never will reach to the else statement. So for this reason you need your for loop to return something.
 
 //For this reason you can put the code
 // for (AddressCard *nextCard in book)
 //{if ([nextCard.name rangeOfString: theName options: NSCaseInsensitiveSearch].location != NSNotFound)
 //return nextCard;
 //else
 //return nil;
 //}
 //return nil;
 //}
 
 //But you can't put the code:
 
 // for (AddressCard *nextCard in book)
 //if ([nextCard.name rangeOfString: theName options: NSCaseInsensitiveSearch].location != NSNotFound)
 //return nextCard;
 //else
 //return nil;
 
 //For more information on this part, i.e., why you can't put an else statement before the return "nil", go and check the http://stackoverflow.com/questions/22410538/error-control-may-reach-end-of-non-void-function-in-c.
 
 //The last example says that if we put it like this it will, "Now, function checks entire values array and then returns false if there was no matches. But if it found a match, it will instantly return true without checking other elements. Also, compiler will not emit a warning for this code."
 
 //Also http://stackoverflow.com/questions/6171500/what-does-control-reaches-end-of-non-void-function-mean. This http://stackoverflow.com/questions/19104216/error-control-may-reach-end-of-non-void-function, this http://cs50.stackexchange.com/questions/2448/how-to-solve-control-may-reach-end-of-non-void-function-error/2480, this https://www.reddit.com/r/cs50/comments/42qn92/helpersc_error_control_may_reach_end_of_nonvoid/, and this http://cs50.stackexchange.com/questions/10154/error-control-may-reach-end-of-non-void-function, this https://www.reddit.com/r/cs50/comments/1ynp4a/control_may_reach_end_of_nonvoid_function_pset3/.
 }
 */

//This is E15.3 CH15
/*
 -(NSArray *) lookupAll: (NSString *) theName
 {
 NSIndexSet *indexSet = [book indexesOfObjectsPassingTest:
 ^BOOL(id obj, NSUInteger idx, BOOL *stop)
 {
 if ([[obj name] rangeOfString: theName options: NSCaseInsensitiveSearch].location != NSNotFound)
 {
 return YES;
 }
 else
 return NO;
 }
 ];
 
 //Now we create an array that contain objects at indexes indexSet in the book array
 
 NSArray *result = [[NSArray alloc] initWithArray: [book objectsAtIndexes: indexSet]];
 
 if ([result count] != 0)
 {
 return result;
 }
 else
 return nil;
 }
 */

//This is E15.5 CH15
/*
-(NSArray *) lookupAll: (NSString *) theName
{
    NSIndexSet *result = [book indexesOfObjectsPassingTest:
                          ^BOOL(id obj, NSUInteger idx, BOOL *stop)
                          {
                              BOOL isFound = NO;
                              NSRange range;
                              range.location = 0;
                              range.length = 0;
                              
                              for (NSString *key in [obj myDictionary])
                              {
                                  if ([[[obj myDictionary] objectForKey: key] isKindOfClass: [NSString class]])
                                  {
                                      range = [[[obj myDictionary] objectForKey:key] rangeOfString: theName];
                                      if (range.location != NSNotFound)
                                      {
                                          isFound = YES;
                                      }
                                  }
                                  
                                  else if ([[[obj myDictionary] objectForKey:key] isKindOfClass:[NSNumber class]])
                                  {
                                      NSNumberFormatter *form = [[NSNumberFormatter alloc] init];
                                      [form setNumberStyle: NSNumberFormatterDecimalStyle];
                                      NSNumber *myNumber = [form numberFromString:theName];
                                      
                                      if ([[[obj myDictionary] objectForKey:key] isEqual: myNumber])
                                      {
                                          isFound = YES;
                                      }
                                  }
                              }
                              
                              if (isFound == YES)
                              {
                                  return YES;
                              }
                              else
                              {
                                  return NO;
                              }
                          }
                          ];
    
    if ([result count] != 0)
    {
        NSArray *myArray = [book objectsAtIndexes:result];
        return myArray;
    }
    else
    {
        return nil;
    }
}
*/

//This is E15.6 CH15
-(BOOL) removeName: (NSString *) theName
{
    NSArray *results = [self lookupAll: theName];
    
    if ([results count] == 1)
    {
        [self removeCard: [results objectAtIndex:0]];
        return YES;
    }
    else
        return NO;
}

//This is E15.11 CH15
/*
-(void) addCard: (AddressCard *) theCard
{
    //Here we first create a new AddressCard with the data from theCard
    AddressCard *temporaryCard = [[AddressCard alloc] init];
    
    [temporaryCard setName:[theCard name] andFirstName:[theCard firstName] andLastName:[theCard lastName] andEmail:[theCard email] andAddress:[theCard address] andState:[theCard state] andCity:[theCard city] andZip:[theCard zip] andCountry:[theCard country] andPhoneNumber:[theCard phoneNumber]];
    
    //Now while AddressBook has the information from the AddressCard, this information is now stored in a different memory address
    [book addObject: temporaryCard];
    
    
    //In the method before, whatever object called the addCard method, it retains a pointer to that AddressCard from the local variable passed to addCard. So if card5 is passed as an argument to the addCard method, if we change the values of card5 by setName the the values pointed to by the AddressBook will be changed also.
    
    //So, since we are dealing with pointers, our initializing variables hold the same values as the object instance variables. This means, that you can change an AddressBook entry by subsequently changing the initializing variable (which is an AddressCard), without having to use any of the defined methods specified in AddressBook and without AddressBook knowing those changes were made. So basically, our code works and protects the data from being change by its initializing local variable.
}
*/

//This is E18.1 CH18
-(id) copyWithZone: (NSZone *) zone
{
    id addressBook = [[[self class] allocWithZone: zone] init];
    [addressBook setBookName:[NSString stringWithString: bookName]];
    [addressBook setBook:[NSMutableArray arrayWithArray: book]];
    return addressBook;
}

//This is P19.5 CH19
-(void) encodeWithCoder: (NSCoder *) encoder
{
    [encoder encodeObject: bookName forKey: @"AddressBookBookName"];
    [encoder encodeObject: book forKey: @"AddressBookBook"];
}

//This is the old program that is fixed in the next method. The solution is here:http://classroomm.com/objective-c/index.php?topic=7580.0
/*
-(id) initWithCoder:(NSCoder *) decoder
{
    bookName = [decoder decodeObjectForKey: @"AddressBookBookName"];
    book = [decoder decodeObjectForKey: @"AddressBookBook"];
    
    return self;
}
*/

-(id) initWithCoder: (NSCoder *) decoder
{
    if (self = [super init])
    {
    bookName = [[decoder decodeObjectForKey: @"AddressBookBookName"] copy];
    book = [decoder decodeObjectForKey: @"AddressBookBook"];
    }
    return self;
}


//This is P19.7 CH19
-(id) mutableCopyWithZone: (NSZone *) zone
{
    id addressBook = [[[self class] allocWithZone: zone] init];
    [addressBook setBookName:[NSMutableString stringWithString: bookName]];
    [addressBook setBook:[NSMutableArray arrayWithArray: book]];
    return addressBook;
}


//This is E19.4 CH19
-(NSArray *) lookupAll: (NSString *) theName
{
    NSIndexSet *indexSet = [book indexesOfObjectsPassingTest:
                            ^BOOL(id obj, NSUInteger idx, BOOL *stop)
                            {
                                if ([[obj name] rangeOfString: theName options: NSCaseInsensitiveSearch].location != NSNotFound)
                                {
                                    return YES;
                                }
                                else
                                    return NO;
                            }
                            ];
    
    //Now we create an array that contain objects at indexes indexSet in the book array
    
    NSArray *result = [[NSArray alloc] initWithArray: [book objectsAtIndexes: indexSet]];
    
    if ([result count] != 0)
    {
        return result;
    }
    else
        return nil;
}


@end
