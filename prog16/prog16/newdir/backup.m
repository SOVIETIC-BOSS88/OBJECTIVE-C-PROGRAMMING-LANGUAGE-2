//
//  main.m
//  prog16
//
//  Created by SUREN HARUTYUNYAN on 25/9/16.
//  Copyright © 2016 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>

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
        

    }
    return 0;
}
