//
//  main.m
//  prog16
//
//  Created by SUREN HARUTYUNYAN on 25/9/16.
//  Copyright © 2016 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+TempFiles.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //This is P16.1 CH16
        
        //Basic File operations
        //Assumes the existence of a file called "testfile"
        //in the current directory
        
        //This is what's in the book.
        /*
         
         NSString        *fName = @"testfile";
         NSFileManager   *fm;
         NSDictionary    *attr;
         

         //Need to create an instance of the file manager
         
         fm = [NSFileManager defaultManager];
         
         //Let's make sure our test file exists first
         
         if ([fm fileExistsAtPath: fName] == NO)
         {
         NSLog(@"File doesn't exist!");
         return 1;
         }
         
         
         //Now let's make a copy
         
         if ([fm copyItemAtPath: fName toPath: @"newfile" error: NULL] == NO)
         {
         NSLog(@"File Copy failed!");
         return 2;
         }
         
         
         //Now let's test to see if the two files are equal
         
         if ([fm contentsEqualAtPath: fName andPath:@"newfile"] == NO)
         {
         NSLog(@"Files are Not Equal");
         return 3;
         }
         
         
         //Now let's rename the copy
         
         if ([fm moveItemAtPath: @"newfile" toPath:@"newfile2" error: NULL] == NO)
         {
         NSLog(@"File rename Failed");
         return 4;
         }
         
         
         //Get the size of the newfile2
         
         if ((attr = [fm attributesOfItemAtPath:@"newfile2" error:  NULL]) == nil)
         {
         NSLog(@"Couldn't get file attributes!");
         return 5;
         }
         
         NSLog(@"File size is %llu bites", [[attr objectForKey: NSFileSize] unsignedLongLongValue]);
         
         
         //And finally let's delete the original file
         
         if ([fm removeItemAtPath:fName error: NULL] == NO)
         {
         NSLog(@"File remocal failed");
         return 6;
         }
         
         NSLog(@"All operations were sucessful");
         
         
         //Display the contents of the newly created file
         
         NSLog(@"%@", [NSString stringWithContentsOfFile:@"newfile2" encoding:NSUTF8StringEncoding error: NULL]);
         */
        
        
        //This is my version, so it can work. It works only one time, because we later remove the "testfile", so you can see now the "testfile" is written in red. So "testfile" doesn't exist.
        /*
        NSString        *fName = @"/Users/SURENHARUTYUNYAN/Library/Developer/Xcode/DerivedData/prog16-gjrrgdapbnpqmcfhlbzddrxqlglp/Build/Products/Debug/testfile";
        NSString     *fNewFile = @"/Users/SURENHARUTYUNYAN/Library/Developer/Xcode/DerivedData/prog16-gjrrgdapbnpqmcfhlbzddrxqlglp/Build/Products/Debug/newfile";
        NSString    *fNewFile2 = @"/Users/SURENHARUTYUNYAN/Library/Developer/Xcode/DerivedData/prog16-gjrrgdapbnpqmcfhlbzddrxqlglp/Build/Products/Debug/newfile2";
        NSFileManager   *fm;
        NSDictionary    *attr;
        
        
        //Need to create an instance of the file manager
        
        fm = [NSFileManager defaultManager];
        
        //Let's make sure our test file exists first
        
        if ([fm fileExistsAtPath: fName] == NO)
        {
            NSLog(@"File doesn't exist!");
            return 1;
        }
        
        
        //Now let's make a copy
        
        if ([fm copyItemAtPath: fName toPath: fNewFile error: NULL] == NO)
        {
            NSLog(@"File Copy failed!");
            return 2;
        }
        
        
        //Now let's test to see if the two files are equal
        
        if ([fm contentsEqualAtPath: fName andPath: fNewFile] == NO)
        {
            NSLog(@"Files are Not Equal");
            return 3;
        }
        
        
        //Now let's rename the copy
        
        if ([fm moveItemAtPath: fNewFile toPath: fNewFile2 error: NULL] == NO)
        {
            NSLog(@"File rename Failed");
            return 4;
        }
        
        
        //Get the size of the newfile2
        
        if ((attr = [fm attributesOfItemAtPath: fNewFile2 error:  NULL]) == nil)
        {
            NSLog(@"Couldn't get file attributes!");
            return 5;
        }
        
        NSLog(@"File size is %llu bites", [[attr objectForKey: NSFileSize] unsignedLongLongValue]);
        
        
        //And finally let's delete the original file
        
        if ([fm removeItemAtPath:fName error: NULL] == NO)
        {
            NSLog(@"File removal failed");
            return 6;
        }
        
        NSLog(@"All operations were sucessful");
        
        
        //Display the contents of the newly created file
        
        NSLog(@"%@", [NSString stringWithContentsOfFile: fNewFile2 encoding:NSUTF8StringEncoding error: NULL]);
        */
        
        //This is P16.2 CH16
        /*
        //Make a copy of a file
        
        //NSFileManager *fm;
        NSData *fileData;
        
        fm = [NSFileManager defaultManager];
        
        //Read the file newfile2
        
        fileData = [fm contentsAtPath: @"newfile2"];
        
        if (fileData == nil)
        {
            NSLog(@"File read failed!");
        }
        
        //Write the data to newfile3
        
        if ([fm createFileAtPath: @"newfile3" contents: fileData attributes: nil] == NO)
        {
            NSLog(@"Couldn't create the copy!");
        }
        
        NSLog(@"File copy was sucessful!");
        */
        
        
        //This is P16.3 CH13
        /*
        NSString *dirName = @"testdir";
        NSString *path;
        NSFileManager *fm;
        
        //Need to create an instance of the file manager
        
        fm = [NSFileManager defaultManager];
        
        //Get current directory
        
        path = [fm currentDirectoryPath];
        NSLog(@"Current directory path is %@", path);
        
        //Create a new directory
        
        if ([fm createDirectoryAtPath: dirName withIntermediateDirectories: YES attributes: nil error: NULL] == NO)
        {
            NSLog(@"Couldn't create directory!");
            return 1;
        }
        
        //Rename the new directory
        
        if ([fm moveItemAtPath: dirName toPath: @"newdir" error: NULL] == NO)
        {
            NSLog(@"Directory rename failed!");
            return 2;
        }
        
        //Change directory into the new directory
        
        if ([fm changeCurrentDirectoryPath: @"newdir"] == NO)
        {
            NSLog(@"Change directory failed!");
            return 3;
        }
        
        //Now get and display current working directory
        
        path = [fm currentDirectoryPath];
        NSLog(@"Current direcotry path is %@", path);
        
        NSLog(@"All operations were successful!");
        */
        
        
        //This is P16.4 CH16
        /*
        NSString *path;
        NSFileManager *fm;
        NSDirectoryEnumerator *dirEnum;
        NSArray *dirArray;
        
        
        //Need to create an instance of the file manager
        
        fm = [NSFileManager defaultManager];
        
        
        //Get the current working diretory path
        
        path = [fm currentDirectoryPath];
        
        
        //Enumerate the directory
        
        dirEnum = [fm enumeratorAtPath: path];
        
        NSLog(@"Contents of %@", path);
        
        while ((path = [dirEnum nextObject]) != nil)
            NSLog(@"%@", path);
        
        
        //Another way to enumerate a directory
        
        dirArray = [fm contentsOfDirectoryAtPath: [fm currentDirectoryPath] error: NULL];
        NSLog(@"Contents using contentsOfDirectoryAtPath:error:");
        
        for (path in dirArray)
            NSLog(@"%@", path);
        
        //We also can display the entire dirArray contents with this single NSLog call
        //NSLog(@"%@", dirArray);
        */
        
        //This is P16.5 CH16
        
        //Some basic path operations
        /*
        NSString *fName = @"path.m";
        NSFileManager *fm;
        NSString *path, *tempdir, *extension, *homedir, *fullpath;
        
        NSArray *components;
        
        fm = [NSFileManager defaultManager];
        
        
        //Get the temporary working directory
        
        tempdir = NSTemporaryDirectory();
        
        NSLog(@"Temporary Directory is %@", tempdir);
        
        
        //Extract the base directory from the current directory
        
        path = [fm currentDirectoryPath];
        NSLog(@"Base dir is %@", [path lastPathComponent]);
        
        
        //Create a full path to the file fName in current directory
        
        fullpath = [path stringByAppendingPathComponent: fName];
        NSLog(@"fullpath to %@ is %@", fName, fullpath);
        
        
        //Get the filename extension
        
        extension = [fullpath pathExtension];
        NSLog(@"extension for %@ is %@", fullpath, extension);
        
        
        //Get user's home directory
        
        homedir = NSHomeDirectory();
        NSLog(@"Your homedirectory is %@", homedir);
        
        
        //Divide a path into its components
        
        components = [homedir pathComponents];
        
        for (path in components)
            NSLog(@"%@", path);
        */
        
        //This is P16.6 CH16
        /*
        //To get this program to work use this link's instrucitons: http://classroomm.com/objective-c/index.php?topic=8297.0
        //Implement a basic copy utility
        NSFileManager *fm;
        NSString *source, *dest;
        BOOL isDir;
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];
        
        fm = [NSFileManager defaultManager];
        
        //Check for two arguments on the command line
        
        if ([args count] != 3)
        {
            NSLog(@"Usage: %@ src dest", [proc processName]);
            return 1;
        }
        
        source = args[1];
        dest = args[2];
        
        
        //Make sure the source file can be read
        
        if ([fm isReadableFileAtPath:source] == NO)
        {
            NSLog(@"Can't read %@", source);
            return 2;
        }
        
        
        //See if the destination file is a directory
        //if it is, add the cource to the end of the destination
        
        [fm fileExistsAtPath: dest isDirectory: &isDir];
        
        if (isDir == YES)
            dest = [dest stringByAppendingPathComponent:[source lastPathComponent]];
        
        
        //Remove the destination file it it already exists
        
        [fm removeItemAtPath:dest error: NULL];
        
        
        //Okay, time to perform the copy
        
        if ([fm copyItemAtPath:source toPath: dest error: NULL] == NO)
        {
            NSLog(@"Copy failed");
            return 3;
        }
        
        
        NSLog(@"Copy of %@ to %@ succeeded!", source, dest);
        */
        
        
        //This is P16.7 CH16
        /*
        //Some basic file handle operations
        //Assumes the existence of a file calles "testfile"
        //in the current working directory
        
        NSFileHandle *inFile, *outFile;
        NSData *buffer;
        
        
        //Opens the file testfile for reading
        
        inFile = [NSFileHandle fileHandleForReadingAtPath: @"testfile"];
        
        if (inFile == nil)
        {
            NSLog(@"Open of testfile for reading failed");
            return 1;
        }
        
        
        //Create the output file first if necessary
        
        [[NSFileManager defaultManager] createFileAtPath: @"testout" contents: nil attributes: nil];
        
        
        //Now open the outfile for writing
        
        outFile = [NSFileHandle fileHandleForWritingAtPath: @"testout"];
        
        if (outFile == nil)
        {
            NSLog(@"Open of tsout for writing failed");
            return 2;
        }
        
        
        //Truncate the output file since it may contain data
        
        [outFile truncateFileAtOffset: 0];
        
        
        //Read the data from inFile and write it to outFile
        
        buffer = [inFile readDataToEndOfFile];
        [outFile writeData: buffer];
        
        
        //Close the two files
        
        [inFile closeFile];
        [outFile closeFile];
        
        
        //Verify the file's contents
        
        NSLog(@"%@", [NSString stringWithContentsOfFile: @"testout" encoding: NSUTF8StringEncoding error: NULL]);
        */
        
        
        //This is P16.8 CH16
        //Append the file "fileA" to the end of "fileB"
        /*
        NSFileHandle *inFile, *outFile;
        NSData *buffer;
        
        
        //Open the file fileA for reading
        
        inFile = [NSFileHandle fileHandleForReadingAtPath: @"fileA"];
        
        if (inFile == nil)
        {
            NSLog(@"Open the fileA for reading failed");
            return 1;
        }
        
        
        //Open the file fileB for updating
        
        outFile = [NSFileHandle fileHandleForWritingAtPath: @"fileB"];
        
        if (outFile == nil)
        {
            NSLog(@"Open of fileB for writing failed");
            return 2;
        }
        
        
        //Seek to the end of outFile
        [outFile seekToEndOfFile];
        
        
        //Read inFile and write its contents to outFile
        
        buffer = [inFile readDataToEndOfFile];
        [outFile writeData: buffer];
        
        
        //Close the two files
        
        [inFile closeFile];
        [outFile closeFile];
        
        
        //Verify its contents
        
        NSLog(@"%@", [NSString stringWithContentsOfFile: @"fileB" encoding: NSUTF8StringEncoding error: NULL]);
        */
        
        //This is P16.9 CH16
        //Read the contents of a file stored at a URL
        /*
        NSURL *myURL = [NSURL URLWithString: @"http://classroomM.com"];
        
        NSString *myHomePage = [NSString stringWithContentsOfURL: myURL encoding: NSASCIIStringEncoding error: NULL];
        
        NSLog(@"%@", myHomePage);
        */
       
        //This is E16.1 CH16
        /*
        NSFileManager *fm;
        NSString *source, *dest;
        
        BOOL isDir;
        
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];
        
        fm = [NSFileManager defaultManager];
        
        //This is for checking our the two arguments on the coommand line
        
        if([args count] < 3)
        {
            NSLog(@"Usage: %@ source destination", [proc processName]);
            return 1;
        }
        
        for (int i = 1; i < [args count] - 1; i++)
        {
            source = args[i];
            dest = args[[args count] -1];
        }
        
        
        //This is to make sure that the source file can be read
        if([fm isReadableFileAtPath:source] == NO)
        {
            NSLog(@"The %@ can't ve read", source);
            return 2;
        }
        
        //This is to see if the destination file is a directory, if it is we add the source to the end of the destination
        if([fm fileExistsAtPath: dest isDirectory: &isDir])
        {
            if(isDir == YES)
                dest = [dest stringByAppendingPathComponent:[source lastPathComponent]];
            else
            {
                NSLog(@"Last argument isn't a directory");
                return 3;
            }
        }
            
        
        //Here we remove the destination file if it already exists
        
        [fm removeItemAtPath:dest error:NULL];
        
        //Here we perform the copy
        
        if([fm copyItemAtPath:source toPath:dest error:NULL] == NO)
        {
            NSLog(@"Copy failed");
            return 4;
        }
        */
        
        
        //This is E16.2 CH16
        /*
        NSFileManager *fm;
        NSString *directory, *search;
        
        BOOL isDir;
        BOOL isAnyFound = NO;
        
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];

        NSString *path;
        NSDirectoryEnumerator *dirEnum;
        
        fm = [NSFileManager defaultManager];
        
        
        if([args count] != 3)
        {
            NSLog(@"Usage: %@ source search", [proc processName]);
            return 1;
        }

        directory = args[1];
        path = [NSString stringWithString: directory];
        search = args[2];
        dirEnum = [fm enumeratorAtPath: directory];
        
        if([fm fileExistsAtPath: directory isDirectory: &isDir])
        {
            if(isDir == NO)
            {
                NSLog(@"The first argmunent isn't a directory");
                return 2;
            }
        }
        
        
    while((directory = [dirEnum nextObject]) != nil)
    {
        if( (int) [directory rangeOfString:search].length != 0)
        {
            NSLog(@"%@", [path stringByAppendingPathComponent: directory]);
            isAnyFound = YES;
        }
    }
    if (isAnyFound == NO)
             NSLog(@"Don't find any");
        */
        
        
        //This is E16.3 CH16
        /*
        //This is my basename version
        NSString *basename;
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];
        
        if ([args count] != 2)
        {
            NSLog(@"Usage: %@, path", [proc processName]);
            return 1;
        }
        
        basename = [[args objectAtIndex:1] lastPathComponent];
        
        NSLog(@"%@", basename);
        
        //This is my dirname version
        NSString *dirname;
        //NSProcessInfo *proc = [NSProcessInfo processInfo];
        //NSArray *args = [proc arguments];
        
        if ([args count] != 2)
        {
            NSLog(@"Usage: %@, path", [proc processName]);
            return 1;
        }
        
        dirname = [[args objectAtIndex:1] stringByDeletingPathExtension];
        
        NSLog(@"%@", dirname);
        */
        
        
        //This is E16.4 CH16
        /*
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        
        NSLog(@"[proc description] %@", [proc description]);
        NSLog(@"[proc arguments] %@", [proc arguments]);
        NSLog(@"[proc environment] %@", [proc environment]);
        NSLog(@"[proc processIdentifier] %i", [proc processIdentifier]);
        NSLog(@"[proc globallyUniqueString] %@", [proc globallyUniqueString]);
        NSLog(@"[proc processName] %@", [proc processName]);
        NSLog(@"[proc hostName] %@", [proc hostName]);
        
        //We can't use operatingSystem because it is deprecated
        //NSLog(@"[proc operatingSystem] %lu", [proc operatingSystem]);
        
        //Here I put some exampled of other ways of doing it
        //NSInteger majorVersion = NSProcessInfo.processInfo.operatingSystemVersion.majorVersion;
        //NSLog(@"[proc operatingSystemVersion.majorVersion] %tu", majorVersion);
        //NSInteger minorVersion = NSProcessInfo.processInfo.operatingSystemVersion.minorVersion;
        //NSLog(@"[proc operatingSystemVersion.minorVersion] %tu", minorVersion);
        //NSInteger patchVersion = NSProcessInfo.processInfo.operatingSystemVersion.patchVersion;
        //NSLog(@"[proc operatingSystemVersion.patchVersion] %tu", patchVersion);
        
        NSLog(@"[proc operatingSystemVersion.majorVersion] %tu", proc.operatingSystemVersion.majorVersion);
        NSLog(@"[proc operatingSystemVersion.minorVersion] %tu", proc.operatingSystemVersion.minorVersion);
        NSLog(@"[proc operatingSystemVersion.patchVersion] %tu", proc.operatingSystemVersion.patchVersion);
        
        //We can't use operatingSystemName because it is deprecated
        //NSLog(@"[proc operatingSystemName] %@", [proc operatingSystemName]);

        NSLog(@"[proc operatingSystemVersionString] %@", [proc operatingSystemVersionString]);
        NSLog(@"[proc physicalMemory] %llu", [proc physicalMemory]);
        NSLog(@"[proc processorCount] %lu", [proc processorCount]);
        NSLog(@"[proc activeProcessorCount] %lu", [proc activeProcessorCount]);
        NSLog(@"[proc systemUptime] %f", [proc systemUptime]);
        NSLog(@"[proc hash] %lu", (unsigned long)[proc hash]);
        */
        
        //This is E16.5 CH16
        //NSLog(@"%@", [NSString temporaryFileName]);
        
        
        //This is E16.6 CH16
        /*
        NSFileHandle *inFile, *outFile;
        NSData *buffer;
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];
        
        unsigned long long int kBufSize = 128;
        
        if ([args count] == 2)
        {
            kBufSize = [[args objectAtIndex:1] integerValue];
        }

        //Here we open the file "testfile" for reading
        inFile = [NSFileHandle fileHandleForReadingAtPath:@"/Users/SURENHARUTYUNYAN/Library/Developer/Xcode/DerivedData/prog16-gjrrgdapbnpqmcfhlbzddrxqlglp/Build/Products/Debug/testfile"];
        
        if (inFile == nil)
        {
            NSLog(@"Opening of testfile for reading has failed");
            return 1;
        }
        
        //Here we create an output file first if it's necessary
        [[NSFileManager defaultManager] createFileAtPath:@"/Users/SURENHARUTYUNYAN/Library/Developer/Xcode/DerivedData/prog16-gjrrgdapbnpqmcfhlbzddrxqlglp/Build/Products/Debug/testout" contents:nil attributes:nil];
        
        
        //Here we open an outfile for writing
        outFile = [NSFileHandle fileHandleForWritingAtPath:@"/Users/SURENHARUTYUNYAN/Library/Developer/Xcode/DerivedData/prog16-gjrrgdapbnpqmcfhlbzddrxqlglp/Build/Products/Debug/testout"];
        if (outFile == nil)
        {
            NSLog(@"Opening of testout for writing has failed");
            return 2;
        }
        
        
        //Here we truncate the output file, bacause it may contain data
        [outFile truncateFileAtOffset:0];
        
        //Here we read the data from inFile and write to outFile
        buffer = [inFile readDataOfLength:(NSUInteger) kBufSize];
        
        [outFile writeData:buffer];
        
        
        //Here we close the two files
        
        [inFile closeFile];
        [outFile closeFile];
        
        
        //Here we verify the file's contents
        NSLog(@"%@", [NSString stringWithContentsOfFile:@"/Users/SURENHARUTYUNYAN/Library/Developer/Xcode/DerivedData/prog16-gjrrgdapbnpqmcfhlbzddrxqlglp/Build/Products/Debug/testout" encoding:NSUTF8StringEncoding error:NULL]);
        */
        
        
        //This is E16.7 CH16
        /*
        NSFileHandle *inFile, *outFile;
        NSData *buffer;
        
        inFile = [NSFileHandle fileHandleForReadingAtPath:@"testfile"];
        
        if(inFile == nil)
        {
            NSLog(@"Opening of testfile for reading has failed");
            return 1;
        }
        
        buffer = [inFile readDataOfLength:128];
        
        outFile = [NSFileHandle fileHandleWithStandardOutput];
        
        [outFile writeData:buffer];
        
        //Here we close the two files
        [inFile closeFile];
        [outFile closeFile];
        */
    
        
        //This is E16.8 CH16
        
        //Here we put URL's information into info
        
        NSMutableDictionary *info = [NSMutableDictionary dictionaryWithContentsOfURL: [NSURL URLWithString:@"http://bit.ly/aycNwd"]];
        
        //Here we display the info
        
        NSLog(@"Original sort");
        for (NSString *key in info)
        {
            NSLog(@"%@: %@", key, [info objectForKey: key]);
        }
        
        //Here we place info into ascending order for sorting
        NSArray *ascendingOrder = [info allKeys];
        ascendingOrder = [ascendingOrder sortedArrayUsingComparator: ^(id obj1, id obj2)
        {
            return [obj1 compare: obj2];
        }];
        
        //Here we display with ascending order
        
        NSLog(@"Ascending sort");
        for (NSString *state in ascendingOrder)
        {
            NSLog(@"%@: %@", state, [info objectForKey: state]);
        }
        
        
                
        }
    return 0;
}
