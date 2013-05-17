//
//  DatabaseManager.h
//  BongoSpellingAdventure
//
//  Created by Muhammad Usman on 5/14/13.
//  Copyright (c) 2013 Muhammad Usman. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "sqlite3.h"


@interface DatabaseManager : NSObject
{
    sqlite3 *personDB;
    NSString *dbPathString;
}


@property(strong , nonatomic)NSString *dbPathString;

- (void)createOrOpenDb;

@end
