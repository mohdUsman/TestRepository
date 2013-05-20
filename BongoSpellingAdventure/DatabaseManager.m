//
//  DatabaseManager.m
//  BongoSpellingAdventure
//
//  Created by Muhammad Usman on 5/14/13.
//  Copyright (c) 2013 TalismaWorks. All rights reserved.
//
/**
 * This class is to manage databases. Get data and to update data in databases.
 *
 */
#import "DatabaseManager.h"
#import "User.h"
@implementation DatabaseManager
@synthesize dbPathString;



/** Returns list of all users data.
 *
 * @return: NSMutableArray
 */
-(NSMutableArray*)getUserDbDataArray
{
    NSMutableArray *userArray = [[NSMutableArray alloc]init];
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docPath = [path objectAtIndex:0];
    dbPathString = [docPath stringByAppendingPathComponent:@"bsapp.db"];
    sqlite3_stmt *statement;
    
    if (sqlite3_open([dbPathString UTF8String], &personDB)==SQLITE_OK) {
        [userArray removeAllObjects];
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM User"];
        const char* query_sql = [querySql UTF8String];
        if (sqlite3_prepare(personDB, query_sql, -1, &statement, NULL)==SQLITE_OK) {
            while (sqlite3_step(statement)==SQLITE_ROW) {
                NSString *user_id = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 0)];
                NSString *nameString = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 1)];
                NSString *ageString = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 2)];
                NSString *scoreString = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 3)];
                NSString *gradeString = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 4)];
                
                User *usr = [[User alloc]init];
                usr.user_id = [user_id intValue];
                usr.userName = nameString;
                usr.age = [ageString intValue];
                usr.score = [scoreString intValue];
                usr.grade = gradeString;
                
                NSLog(@"User Id = %d : UserName = %@ : User Age = %d : UserScore = %d : UserGrade = %@",usr.user_id ,usr.userName, usr.age , usr.score , usr.grade);
                
                [userArray addObject:usr];
                
            }
        }
        
    }
    return userArray;
}


@end
