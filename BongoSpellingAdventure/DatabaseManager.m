//
//  DatabaseManager.m
//  BongoSpellingAdventure
//
//  Created by Muhammad Usman on 5/14/13.
//  Copyright (c) 2013 Muhammad Usman. All rights reserved.
//
/**
 * This class is to manage databases. Get data and to update data in databases.
 *
 */
#import "DatabaseManager.h"

@implementation DatabaseManager
@synthesize dbPathString;


/**
 * For testing purpose only.
 *
 */
- (void)createOrOpenDb
{
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docPath = [path objectAtIndex:0];
    
    dbPathString = [docPath stringByAppendingPathComponent:@"bsapp.db"];
    
    char *error;
    
        
        //creat db here
            const char *sql_stmt = "CREATE TABLE AssignedGroups (UserId INTEGER PRIMARY KEY AUTOINCREMENT, PackId TEXT, GroupId INTEGER)";
            sqlite3_exec(personDB, sql_stmt, NULL, NULL, &error);
            sqlite3_close(personDB);
    }
@end
